class QuestionsDatabase < SQLite3::Database
  include Singleton

  def initialize
    super("questions.db")
    self.type_translation = true
    self.result_as_hash = true
  end
end

class Question
  def self.find_by_id
    data = QuestionsDatabase.instance.execute("SELECT id FROM questions")
    data.map { |ele| Question.new(ele) }
  end
end

class User
  def initialize(options)
    @id = options["id"]
    @fname = options["fname"]
    @lname = options["lname"]
  end

  def self.find_by_id
    data = QuestionsDatabase.instance.execute("SELECT id FROM users")
    data.map { |ele| User.new(ele) }
  end

  def self.find_by_name
    data = QuestionsDatabase.instance.execute("SELECT fname,lname FROM users")
    data.map { |ele| User.new(ele) }
  end
end

class QuestionFollow
  def self.find_by_id
    data = QuestionsDatabase.instance.execute("SELECT id FROM question_follows")
    data.map { |ele| QuestionFollow.new(ele) }
  end
end

class Reply
  def self.find_by_id
    data = QuestionsDatabase.instance.execute("SELECT id FROM replies")
    data.map { |ele| Reply.new(ele) }
  end
end

class QuestionLike
  def self.find_by_id
    data = QuestionsDatabase.instance.execute("SELECT id FROM question_likes")
    data.map { |ele| QuestionLike.new(ele) }
  end
end
