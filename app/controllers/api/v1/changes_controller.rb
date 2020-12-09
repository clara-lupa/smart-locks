class Api::V1::ChangesController < Api::V1::BaseController

# skip_before_action :verify_authenticity_token

# curl curl -i -X POST -H 'Content-Type: application/csv' -H 'X-User-Codename: testuser' -H 'X-User-Token: 123456' -d '{"changes": {"2017-05-01T00:00:10Z,a4a281ad,sensor,offline"}}'  http://localhost:3000/api/v1/changes

  def create
    puts "i am the API changes controller performing create"
    p params
    puts "this is the users info"
    code_name = request.headers['X-User-Codename']
    sent_token = request.headers['X-User-Token']
    p code_name
    p sent_token
    if user_authenticated?(code_name, sent_token)
      puts "authentication true"
    end
    # if authenitcated, then parse the CSV
    # for each row:
    # find the lock with the given lock ID
      # if it exists:
        # update its state in the lock table
        # add the change to the changes table
      # if it does not exist yet
        # create a new lock
        # do the same as above
      # end

  end

  private

  def user_authenticated?(code_name, sent_token)
    user = User.find_by(code_name: code_name)
    user.auth_token == sent_token
  end

  def parse_csv(csv)


    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
    filepath    = 'beers.csv'

    CSV.foreach(filepath, csv_options) do |row|
      puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
    end

  end
end
