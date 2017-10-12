import json
from pprint import pprint 

json_data=open('./jsonfile.json')
data=json.load(json_data)

for q in data['questions']:
   rebuilt_question = Question(q['id'], q['site'], q['title'], q['created'], q['last_queried'], q['already_answered'], q['answer_count'], q['submitter'])
   self.tracking_list.append(rebuilt_question)
