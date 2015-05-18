#!/bin/sh

sudo /opt/splunkforwarder/bin/splunk add monitor /logs/httpd -index main -sourcetype apache
sudo /opt/splunkforwarder/bin/splunk add monitor /logs/monit -index main -sourcetype monit
sudo /opt/splunkforwarder/bin/splunk add monitor /logs/oneit -index main -sourcetype oneit
sudo /opt/splunkforwarder/bin/splunk add monitor /logs/tomcat7 -index main -sourcetype tomcat
sudo /opt/splunkforwarder/bin/splunk add monitor /logs/puppet -index main -sourcetype puppet
