# Cambridge Mqtt Antora documentation
## Requirements
To be able to generate antora documentation you need

* Node.js LTS (eg. v12.16.2)
* Antora 2.3.3 or better
* asciidoc-plantuml module

Below installation 
```
# Antora
npm i -g @antora/cli @antora/site-generator-default

#plantuml
npm install asciidoctor-plantuml
```


## Generating
Create directory for Anotra documentation, and enter to it.
```
mkdir cambridge-antora && cd cambridge-antora
```
Create file required for repo settings
```
vi antora-playbook.yml
```
And then paste:
```
asciidoc:
  extensions:
    - asciidoctor-plantuml
  attributes:
    plantuml-server-url: 'http://www.plantuml.com/plantuml'

site:
  title: Antora Demo Site
  url: https://my-antora-demo-site.org 
  start_page: cambridge_mqtt::index.adoc 
  
content:
  sources:
  - url: https://github.com/robertchrzanowski-tomtom/cambridge-documentation-antora
    branches: master
    start_path: docs
ui:
  bundle:
    url: https://gitlab.com/antora/antora-ui-default/-/jobs/artifacts/master/raw/build/ui-bundle.zip?job=bundle-stable
    snapshot: true

```

Generate using following command
```
antora antora-playbook.yml
```
Site would be available under following section: ```/home/chrzanow/cambridge/Antora_mqtt/cambridge-antora/build/site/index.html```


## Publishing to portainer
Use following command to publish app to portainer docker image repository.

This file would once again generate site!.

NOTE! 
Remember to change version of image if needed!

```
sh generate_and_publish.sh
```