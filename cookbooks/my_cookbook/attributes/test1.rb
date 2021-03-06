include_attribute "tomcat"

#default['tomcat']['packages'] = ["tomcat#{suffix}"]
#default['tomcat']['base_version'] = 7
#default['tomcat']['base_instance'] = "tomcat"
#default['tomcat']['proxy_port'] = nil
#default['tomcat']['ssl_port'] = 8443
#default['tomcat']['ssl_proxy_port'] = nil
#default['tomcat']['ajp_port'] = 8009
#default['tomcat']['shutdown_port'] = 8005
#default['tomcat']['catalina_options'] = ''
#default['tomcat']['java_options'] = '-Xmx128M -Djava.awt.headless=true'
#default['tomcat']['use_security_manager'] = false
#default['tomcat']['authbind'] = 'no'
#default['tomcat']['deploy_manager_apps'] = true
#default['tomcat']['max_threads'] = nil
#default['tomcat']['ssl_max_threads'] = 150
#default['tomcat']['ssl_cert_file'] = nil
#default['tomcat']['ssl_key_file'] = nil
#default['tomcat']['ssl_chain_files'] = []
#default['tomcat']['keystore_file'] = 'keystore.jks'
#default['tomcat']['keystore_type'] = 'jks'
## The keystore and truststore passwords will be generated by the
## openssl cookbook's secure_password method in the recipe if they are
## not otherwise set. Do not hardcode passwords in the cookbook.
## default["tomcat"]["keystore_password"] = nil
## default["tomcat"]["truststore_password"] = nil
#default['tomcat']['truststore_file'] = nil
#default['tomcat']['truststore_type'] = 'jks'
#default['tomcat']['certificate_dn'] = 'cn=localhost'
#default['tomcat']['loglevel'] = 'INFO'
#default['tomcat']['tomcat_auth'] = 'true'
#default['tomcat']['run_base_instance'] = true
#default['tomcat']['packages'] = ["tomcat#{node['tomcat']['base_version']}"]
#default['tomcat']['deploy_manager_packages'] = ["tomcat#{node['tomcat']['base_version']}-admin"]

default['tomcat']['tomcat_base'] = "/opt/tomcats"
default['tomcat']['base'] = "/usr/share/tomcat"
default['tomcat']['base_instance'] = "tomcat"
default['tomcat']['packages'] = ["tomcat"]
default['tomcat']['base_version'] = 7
default['tomcat']['deploy_manager_packages'] = ["tomcat-admin-webapps"]
default['tomcat']['jvm_route'] = "#{node['hostname']}"

catalina_base="/opt/tomcats/test1"
default['tomcat']['instances']['test1']['user']='tomcat'
default['tomcat']['instances']['test1']['group']='tomcat'
default['tomcat']['instances']['test1']['home']="/usr/share/tomcat"
default['tomcat']['instances']['test1']['base']="#{catalina_base}"
default['tomcat']['instances']['test1']['config_dir']="#{catalina_base}/conf"
default['tomcat']['instances']['test1']['log_dir']="#{catalina_base}/logs"
default['tomcat']['instances']['test1']['tmp_dir']="#{catalina_base}/temp"
default['tomcat']['instances']['test1']['work_dir']="#{catalina_base}/work"
default['tomcat']['instances']['test1']['context_dir']="#{catalina_base}/conf/Catalina/localhost"
default['tomcat']['instances']['test1']['webapp_dir']="#{catalina_base}/webapps"
default['tomcat']['instances']['test1']['lib_dir']="#{catalina_base}/lib"
default['tomcat']['instances']['test1']['endorsed_dir']="#{catalina_base}/endorsed"
default['tomcat']['instances']['test1']['port']=8100
default['tomcat']['instances']['test1']['ssl_port']=8103
default['tomcat']['instances']['test1']['proxy_port']=8150
default['tomcat']['instances']['test1']['ssl_proxy_port']=8153
default['tomcat']['instances']['test1']['ajp_port']=8109
default['tomcat']['instances']['test1']['shutdown_port']=8106
