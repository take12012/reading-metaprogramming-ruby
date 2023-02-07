class TryOut
  # このクラスの仕様
  # コンストラクタは、2つまたは3つの引数を受け付ける。引数はそれぞれ、ファーストネーム、ミドルネーム、ラストネームの順で、ミドルネームは省略が可能。
  # full_nameメソッドを持つ。これは、ファーストネーム、ミドルネーム、ラストネームを半角スペース1つで結合した文字列を返す。ただし、ミドルネームが省略されている場合に、ファーストネームとラストネームの間には1つのスペースしか置かない
  # first_name=メソッドを持つ。これは、引数の内容でファーストネームを書き換える。
  # upcase_full_nameメソッドを持つ。これは、full_nameメソッドの結果をすべて大文字で返す。このメソッドは副作用を持たない。
  # upcase_full_name! メソッドを持つ。これは、upcase_full_nameの副作用を持つバージョンで、ファーストネーム、ミドルネーム、ラストネームをすべて大文字に変え、オブジェクトはその状態を記憶する
  
  attr_accessor :first_name
  attr_reader :middle_name, :last_name

  def initialize(first_name, middle_name = nil, last_name)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  # ファーストネーム、ミドルネーム、ラストネームを半角スペース1つで結合した文字列を返却
  def full_name
    full_name_array = []
    full_name_array.push(first_name)
    full_name_array.push(middle_name) unless middle_name.nil?
    full_name_array.push(last_name)
    full_name_array.join(' ')
  end

  # full_nameメソッドの結果をすべて大文字で返却
  def upcase_full_name
    full_name.upcase
  end

  # upcase_full_nameの副作用を持つバージョンで、ファーストネーム、ミドルネーム、ラストネームをすべて大文字に変え、オブジェクトはその状態を記憶する
  def upcase_full_name!
    first_name.upcase!
    middle_name.upcase! unless middle_name.nil?
    last_name.upcase!
    full_name
  end
end
