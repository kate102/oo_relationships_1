## We have a secret diary to TDD and encapsulate

SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user calls `lock` again they throw errors again.

Basic Test Outline
1. Try to create a secret_diary object in irb
 - this will fail
2. Move this test to  the spec file
 - this will fail rspec
3. Create a basic object in .rb file
 - this should succeed
4. for each of the functions in turn 
	a - try to invoke in irb
	b - try to invoke using rspec
	c - enhance the code


Basic Tests
secret_diary = SecretDiary.new
secret_diary.lock
secret_diary.unlock
secret_diary.add_entry
secret_diary.get_entries

Enhanced Test Outline
1. the diary is locked when initialized
2. add_entry should throw an error
3. get_entry should throw an error
4. unlock should work
5. add_entry should work
6. get_entry should work
7. lock should work
8. add_entry should throw an error
9. get_entry should throw an error

Enhanced Tests
secret_diary = SecretDiary.new
secret_diary.locked? # => true
secret_diary.add_entry # => Error Message
secret_diary.get_entry # => Error Message
secret_diary.unlock
secret_diary.add_entry
secret_diary.get_entries
secret_diary.locked? # => false
secret_diary.lock
secret_diary.add_entry # => Error Message
secret_diary.get_entry # => Error Message

############################## 
# Now my task is to reorganise into different classes. 
# I would like a Lock class to not break the tests
