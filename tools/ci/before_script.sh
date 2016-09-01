set -v

if [[ "$TEST_SUITE" == "rspec" ]]; then
  bin/rails db:drop RAILS_ENV=test
  bin/rails db:schema:load RAILS_ENV=test
fi

set +v
