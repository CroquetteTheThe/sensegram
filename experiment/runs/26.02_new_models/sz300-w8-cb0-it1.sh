time ./pooling.py intermediate/ukwac-clusters-dep-cw-e0-N200-n200-minsize5-count3488990.csv 3488990 model/res2/corpus_en.norm-sz300-w8-cb0-it1-min20.w2v model/res2/corpus_en.norm-sz300-w8-cb0-it1-min20.w2v.senses -lowercase 
time ./prediction.py context-eval/data/Dataset-SemEval-2013-13.csv model/res2/corpus_en.norm-sz300-w8-cb0-it1-min20.w2v.senses model/res2/corpus_en.norm-sz300-w8-cb0-it1-min20.w2v.contexts eval/res2/corpus_en.norm-sz300-w8-cb0-it1-min20_SemEval-2013-13_predictions_nothr.csv -lowercase
cd context-eval/ 
time ./semeval_2013_13.sh semeval_2013_13/keys/gold/all.key ../eval/res2/corpus_en.norm-sz300-w8-cb0-it1-min20_SemEval-2013-13_predictions_nothr.csv > ../eval/res2/corpus_en.norm-sz300-w8-cb0-it1-min20_SemEval-2013-13_predictions_nothr.csv.eval
cd ..