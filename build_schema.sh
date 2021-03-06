#!/usr/bin/env bash

if [ -x ~/go/bin/yaml2json ] ; then 
	YAMLTOJSON(){
		~/go/bin/yaml2json
	}
else
	YAMLTOJSON(){
		python -c "import json,yaml,sys;print(json.dumps(yaml.load(sys.stdin)))"
	}
fi

alias -p 

YAMLTOJSON < schema/se/PrivateUnsecuredLoanApplicationCreated.yaml > schema/se/PrivateUnsecuredLoanApplicationCreated.json
YAMLTOJSON < schema/se/PrivateUnsecuredLoanDisbursed.yaml > schema/se/PrivateUnsecuredLoanDisbursed.json
YAMLTOJSON < schema/se/PrivateUnsecuredLoanStatusUpdated.yaml > schema/se/PrivateUnsecuredLoanStatusUpdated.json
YAMLTOJSON < schema/se/PrivateUnsecuredLoanRejection.yaml > schema/se/PrivateUnsecuredLoanRejection.json
YAMLTOJSON < schema/se/PrivateUnsecuredLoanDelayedProcessing.yaml > schema/se/PrivateUnsecuredLoanDelayedProcessing.json
YAMLTOJSON < schema/se/PrivateUnsecuredLoanOffering.yaml > schema/se/PrivateUnsecuredLoanOffering.json
YAMLTOJSON < schema/se/reference.yaml > schema/se/reference.json
YAMLTOJSON < schema/se/BankAccount.yaml > schema/se/BankAccount.json
YAMLTOJSON < schema/se/PrivateUnsecuredLoanOfferAccepted.yaml > schema/se/PrivateUnsecuredLoanOfferAccepted.json
YAMLTOJSON < schema/se/PrivateUnsecuredLoanOfferRejected.yaml > schema/se/PrivateUnsecuredLoanOfferRejected.json
