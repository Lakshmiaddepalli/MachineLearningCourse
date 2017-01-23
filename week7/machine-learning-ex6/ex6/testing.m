vocabList = getVocabList();
word_indices = [];
m = length(vocabList);
str = 'aa';

for i = 1:m
x = strcmp(str,vocabList(i));
if(x==1)
a = i;
word_indices = [word_indices ; a]; 
end
end

