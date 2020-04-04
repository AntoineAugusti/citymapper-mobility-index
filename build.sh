wget -O data/data-`date +%Y-%m-%d`.json https://citymapper.com/api/gobot_tab/data

python3 main.py

export API="https://www.data.gouv.fr/api/1"
export DATASET_ID="5e7ca7511bc790fc68223a2f"
export RESOURCE="0e56f0f4-6a82-48d4-b677-96e950100176"
curl -H "Accept:application/json" \
  -H "X-Api-Key:$DATA_GOUV_API_KEY" \
  -F "file=@data.csv" \
  -X POST $API/datasets/$DATASET_ID/resources/$RESOURCE/upload/
