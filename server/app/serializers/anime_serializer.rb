# == Schema Information
#
# Table name: anime
#
#  id                        :integer          not null, primary key
#  slug                      :string(255)
#  age_rating                :integer
#  episode_count             :integer
#  episode_length            :integer
#  synopsis                  :text             default(""), not null
#  youtube_video_id          :string(255)
#  mal_id                    :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  cover_image_file_name     :string(255)
#  cover_image_content_type  :string(255)
#  cover_image_file_size     :integer
#  cover_image_updated_at    :datetime
#  average_rating            :float            default(0.0), not null
#  user_count                :integer          default(0), not null
#  thetvdb_series_id         :integer
#  thetvdb_season_id         :integer
#  age_rating_guide          :string(255)
#  show_type                 :integer
#  start_date                :date
#  end_date                  :date
#  rating_frequencies        :hstore           default({}), not null
#  poster_image_file_name    :string(255)
#  poster_image_content_type :string(255)
#  poster_image_file_size    :integer
#  poster_image_updated_at   :datetime
#  cover_image_top_offset    :integer          default(0), not null
#  ann_id                    :integer
#  started_airing_date_known :boolean          default(TRUE), not null
#  titles                    :hstore           default({}), not null
#  canonical_title           :string           default("ja_en"), not null
#  abbreviated_titles        :string           is an Array
#

class AnimeSerializer < ActiveModel::Serializer
  attributes :id, :slug,
             # Images
             :poster_image, :cover_image, :cover_image_top_offset,
             # Titles
             :titles, :canonical_title, :abbreviated_titles,
             # Type, Dates, Synopsis
             :show_type, :start_date, :end_date, :synopsis,
             # Age Ratings
             :age_rating, :age_rating_guide,
             # Ratings
             :average_rating, :rating_frequencies,
             # Episodes
             :episode_count, :episode_length
end