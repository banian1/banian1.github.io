import re 

from collections import Counter 

def get_top_three_words(text): 

    words = re.findall(r'\b\w+\b', text.lower())        

    word_counts = Counter(words)        

    top_three = word_counts.most_common(3)        

    return top_three 

text = input()

top_three_words = get_top_three_words(text) 



for word, count in top_three_words:    

    print(f"{word}          {count}")
