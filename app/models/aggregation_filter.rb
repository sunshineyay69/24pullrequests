class AggregationFilter < ActiveRecord::Base
  belongs_to :user

  PULL_REQUEST_FILTER = AggregationFilter.where("pull_requests.user_id = aggregation_filters.user_id")
                                         .where("pull_requests.repo_name LIKE aggregation_filters.repo_pattern")
                                         .exists.not
end
