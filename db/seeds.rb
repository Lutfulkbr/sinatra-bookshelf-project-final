User.destroy_all
Book.destroy_all

lskabir = User.create(name: "Lutful Kabir", username: "lskabir", password: "Password1")
lskabir.books.create(title: "The House Of Mirth", author_name: "Edith Wharton", content: "The heart of the wise is in the house of mourning; but the heart of fools is in the house of mirth.")
lskabir.books.create(title: "Vile Bodies", author_name: "Evelyn Waugh", content: "[w]ho shall change our vile body, that it may be fashioned like unto his glorious body, according to the working whereby he is able even to subdue all things unto himself.")

thor = User.create(name: "Chris Hemsworth", username: "thor", password: "Password2")
thor.books.create(title: "Brave New World", author_name: "Aldous Huxley", content: "For in that sleep of death, what dreams may come, When we have shuffled off this mortal coil, Must give us pause.")
thor.books.create(title: "Absalom Absalom", author_name: "William Faulkner", content: "Absalom, the third son of David, rebelled against his father and was killed in battle. The full Biblical sentence is But the king covered his face, and the king cried with a loud voice, O my son Absalom, O Absalom, my son, my son! Faulkner was a big fan of borrowed titles: his 1939 If I Forget Thee, Jerusalem is also from the Bible, Psalms 137:5. The line in question is If I forget thee, Jerusalem, let my right hand forget its skill.")
thor.books.create(title: "East Of Eden", author_name: "John Steinbeck", content: "after Cain has slain his brother Abel. And Cain went out from the presence of the Lord, and dwelt in the land of Nod, on the east of Eden.")

thanos = User.create(name: "Thanos", username: "thanos", password: "Password3")
thanos.books.create(title: "A Scanner Darkly", author_name: "Philip K. Dick", content: "we see through a glass, darkly; but then face to face: now I know in part; but then shall I know even as also I am known.")
thanos.books.create(title: "Brave New World", author_name: "Aldous Huxley", content: "For in that sleep of death, what dreams may come, When we have shuffled off this mortal coil, Must give us pause.")
thanos.books.create(title: "Absalom Absalom", author_name: "William Faulkner", content: "Absalom, the third son of David, rebelled against his father and was killed in battle. The full Biblical sentence is But the king covered his face, and the king cried with a loud voice, O my son Absalom, O Absalom, my son, my son! Faulkner was a big fan of borrowed titles: his 1939 If I Forget Thee, Jerusalem is also from the Bible, Psalms 137:5. The line in question is If I forget thee, Jerusalem, let my right hand forget its skill.")


Book.create(title: "Absalom Absalom", author_name: "William Faulkner", content: "Absalom, the third son of David, rebelled against his father and was killed in battle. The full Biblical sentence is But the king covered his face, and the king cried with a loud voice, O my son Absalom, O Absalom, my son, my son! Faulkner was a big fan of borrowed titles: his 1939 If I Forget Thee, Jerusalem is also from the Bible, Psalms 137:5. The line in question is If I forget thee, Jerusalem, let my right hand forget its skill.")
Book.create(title: "A Time To Kill", author_name: " John Grisham", content: "Abraham Lincoln quoted Ecclesiastes when addressing Congress in 1862, and the novelist Thomas Wolfe called it ‘the greatest single piece of writing I have ever known.’ Grisham’s 1989 title is taken from the line that [To every thing there is a season, and a time to every purpose under the heaven:] A time to kill, and a time to heal; a time to break down, and a time to build up…")
Book.create(title: "The House Of Mirth", author_name: "Edith Wharton", content: "The heart of the wise is in the house of mourning; but the heart of fools is in the house of mirth.")
Book.create(title: "East Of Eden", author_name: "John Steinbeck", content: "after Cain has slain his brother Abel. And Cain went out from the presence of the Lord, and dwelt in the land of Nod, on the east of Eden.")
Book.create(title: "The Sun Also Rises", author_name: "Ernest Hemingway", content: "The sun also ariseth, and the sun goeth down, and hasteth to his place where he arose.")
Book.create(title: "Vile Bodies", author_name: "Evelyn Waugh", content: "[w]ho shall change our vile body, that it may be fashioned like unto his glorious body, according to the working whereby he is able even to subdue all things unto himself.")
Book.create(title: "A Scanner Darkly", author_name: "Philip K. Dick", content: "we see through a glass, darkly; but then face to face: now I know in part; but then shall I know even as also I am known.")
Book.create(title: "Moab Is My Washpot", author_name: "Stephen Fry", content: "Moab is my washpot; over Edom will I cast out my shoe: Philistia, triumph thou because of me.")
Book.create(title: "Number The Stars", author_name: "Lois Lowry", content: "He [God] telleth the number of the stars; he calleth them all by their names.")
Book.create(title: "Brave New World", author_name: "Aldous Huxley", content: "For in that sleep of death, what dreams may come, When we have shuffled off this mortal coil, Must give us pause.")
