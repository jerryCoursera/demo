from samples.nlopt_examples import nlopt_examples

def run_official_example():
    a = nlopt_examples()
    result = a.run_offcial_example()
    return result#jsonify(ResponseHandler(status_code=200, payload={"status": str(result)}, message="data retrieved successfully").to_dict())

result = run_official_example()
print(repr(result))