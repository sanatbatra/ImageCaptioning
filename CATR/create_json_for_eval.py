import csv
import json


with open('catr_validation_generated_captions.csv') as f:

    captions_val2017_catr_results = []
    for row in csv.DictReader(f):
        d = {}
        for k,v in row.items():
            if k=='id':
                d['image_id'] = int(v)
            elif k=='caption':
                d['caption'] = v

        print(d)

        captions_val2017_catr_results.append(d)

    print(len(captions_val2017_catr_results))
    with open('./captions_val2017_catr_results.json', 'w') as fout:
        json.dump(captions_val2017_catr_results, fout)

