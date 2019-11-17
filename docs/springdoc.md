#学习笔记
SpringApplication将从以下位置加载application.properties文件，并把它们添加到Spring Environment中：

1.当前目录下的/config子目录。
2.当前目录。
3.classpath下的/config包。
4.classpath根路径（root）。
该列表是按优先级排序的（列表中位置高的路径下定义的属性将覆盖位置低的）。


#@ConfigurationProperties做的事
my:  
   servers:  
       - dev.bar.com  
       - foo.bar.com  

@ConfigurationProperties(prefix="my")  
public class Config {  
    private List<String> servers = new ArrayList<String>();  
    public List<String> getServers() {  
        return this.servers;  
  }  
}  




