class Advideo < ActiveRecord::Base
  attr_accessor :file

  private

  after_create :upload_video, if: :file

  def upload_video
    video = StorageBucket.files.new(
      key: "ad_videos/#{id}/#{file.original_filename}",
      body: file.read,
      public: true
    )

    video.save
    self.video_url = video.public_url

    save
  end

end
