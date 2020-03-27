class Target < ApplicationRecord
  include AlgoliaSearch
  has_one_attached :annual_report
  has_one_attached :target_logo
  has_many :deals
  has_many :rounds, :through => :deals
  validates :name, presence: true, uniqueness: true
  validates :sector, presence: true
  after_commit :async_update

  algoliasearch do
  end

  private

  def load_algolia
    index = Algolia::Index.new('Target')
    index.add_object(self)
    puts "Reindex done"
  end

  def async_update
    MarketdataJob.perform_later(self.identifier)
  end
end
