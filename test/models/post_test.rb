require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not be valid without title" do
    post  = Post.new
    post.content = 'just a test'
    assert_not post.valid?
    assert_includes post.errors.full_messages, 'Tittle can\'t be blank '

end
test "should not be valid without content" do
  post = Post.new
  post.title = 'just a test'
  assert_not post.valid?
    assert_includes post.errors.full_messages, 'content can\'t be blank '
    end
end