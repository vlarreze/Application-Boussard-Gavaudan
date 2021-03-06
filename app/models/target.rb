class Target < ApplicationRecord
  include AlgoliaSearch
  has_one_attached :annual_report
  has_one_attached :target_logo
  has_many :deals
  validates :name, presence: true, uniqueness: true
  validates :sector, presence: true

  # algoliasearch do
  # end

  private

  def load_algolia
    index = Algolia::Index.new('Target')
    index.add_object(self)
    puts "Reindex done"
  end

end
