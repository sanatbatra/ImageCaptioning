from nltk.translate.bleu_score import *
reference = [['this', 'is', 'a', 'test']]
candidate = ['this', 'is', 'a', 'test']
score = sentence_bleu(reference, candidate)

print(score)

references = [[['this', 'is', 'a', 'test']], [['yo', 'this', 'is', 'an', 'example']], [['here', 'is', 'another', 'sentence']]]
candidates = [['this', 'is', 'a', 'test'], ['hi', 'this', 'is', 'an', 'example'], ['here', 'is', 'another', 'sentence']]
score = corpus_bleu(references, candidates)
print(score)
