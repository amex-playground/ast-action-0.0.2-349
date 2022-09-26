if [[ ${1}  = *"-rc."* ]]
then
  curl https://downloads.traceable.ai/\#cli/rc/${1}/tars/traceable-cli-${1}-linux-x86_64.tar.gz -o ${GITHUB_WORKSPACE}/traceable-cli-${1}-linux-x86_64.tar.gz
  tar -xf ${GITHUB_WORKSPACE}/traceable-cli-${1}-linux-x86_64.tar.gz --directory ${GITHUB_WORKSPACE}
  export CLI_LOCATION=${GITHUB_WORKSPACE}/traceable-cli-${1}-linux-x86_64
fi
if [[ ${1} = "latest" ]]
then
  ls -la
fi
source .bashrc