# Start coding here!
require 'sqlite3'

$db = SQLite3::Database.new "address_book.db"

module AddressBookDB
  def self.setup
    $db.execute(
      <<-SQL
        CREATE TABLE address_book (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          contact VARCHAR(64) NOT NULL,
          address VARCHAR(64) NOT NULL,
          group VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  def self.seed
    # Add a few records to your database when you start
    $db.execute(
      <<-SQL
        INSERT INTO address_book
          (first_name, last_name, contact, address, group, created_at, updated_at)
        VALUES
          ('Brick','Thornton', '^\d{3}.\d{3}.\d{3,}', 'OR', 'Friend', DATETIME('now'), DATETIME('now')
          );        
      SQL
    )
  end

class Contact_Group
  attr_accessor: Contact

  def initialize(address_book)
  	@address_book = ('Brick','Thornton', '^\d{3}.\d{3}.\d{3,}', 'OR', 'Friend', DATETIME('now'), DATETIME('now')
  end

  def contact_group.delete
  	p 'group deleted.'
  end	
end

class Contact

	def initialize(first_name, last_name, contact, address, group, created_at, updated_at)
	@first_name = first_name
	@last_name = last_name
	@contact = contact
	@address = address
	@group = group
	@ created_at = DATETIME('now')
	@updated_at = DATETIME('now')
	end

	def contact.add(first_name, last_name, contact, address, group, created_at, updated_at)
    $db.execute(
      <<-SQL
      INSERT INTO address_book
      (first_name, last_name, contact, address, group, created_at, updated_at)
      VALUES
      (#{first_name}, #{last_name}, #{^\d{3}.\d{3}.\d{3,}}, #{address}, #{group}, DATETIME('now'), DATETIME('now'));
      SQL
      )
  	end

	def contact.delete(first_name, last_name, contact, address, group, created_at, updated_at)
  	$db.execute(
      <<-SQL
      INSERT INTO address_book
      (first_name, last_name, contact, address, group, created_at, updated_at)
      VALUES
      (#{first_name}, #{last_name}, #{^\d{3}.\d{3}.\d{3,}}, #{address}, #{group}, DATETIME('now'), DATETIME('now'));
      SQL
      )
  	end

end