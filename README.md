# miaosha
��Ŀ���
ͨ��SpringBoot���ٴ��ǰ��˷���ĵ��̻�����ɱ��Ŀ����Ŀͨ��Ӧ�����������͵ķֲ�ģ����Ʒ�ʽȥ��ɣ��û�otpע�ᡢ��½���鿴����Ʒ�б�������Ʒ�����Լ�����ʱ��ɱ��ʼ���µ�����Ļ������̡�

�γ̵�ַ��SpringBoot�������̻�����ɱ��Ŀ




ʹ�õ����ⲿ����
org.springframework.boot:spring-boot-starter-web
mysql:mysql-connector-java
com.alibaba:druid
org.mybatis.spring.boot:mybatis-spring-boot-starter
org.apache.commons:commons-lang3
org.hibernate:hibernate-validator
joda-time:joda-time
junit:junit
org.springframework:spring-test
org.mybatis.generator��mybatis-generator-maven-plugin �������
��ĿҪ��
��mybatis-generator.xml�����ļ����ڶ�Ӧ���ɱ����������м��� enableCountByExample="false"enableUpdateByExample="false" enableDeleteByExample="false" enableSelectByExample="false"selectByExampleQueryId="false" �������ɲ����÷���
 

ǰ�� ajax ���ýӿڻ�ȡ��֤�� html/getotp.html�����ֿ����������� ���������@CrossOrigin(origins = {"*"}, allowCredentials = "true") allowedHeaders ����ǰ�˽� token ���� header �� session ����Ŀ������� allowCredentials ���ź���ǰ��Ҳ���� xhfFields ���Ų���ʵ�ֿ��� session ���� xhrFields: {withCredentials: true},
 

ͳһǰ�˷��ظ�ʽCommonReturnType {status: xx ,object:xx} dataobject -> �����ݿ��Ӧ��ӳ����� model -> ����ҵ���߼�service������ģ�Ͷ��� viewobject -> ����ǰ�˽�����ģ�Ͷ���
 

ʹ�� hibernate-validator ͨ��ע�������ģ�Ͳ���У��
 

insertSelective ������ keyProperty="id" useGeneratedKeys="true" ʹ�ò������� DO �������� id �� insertSelective��insert���� insertSelective��Ӧ��sql��������NULLУ�飬��ֻ��������ݲ�Ϊnull���ֶ�ֵ��null���ֶ����������ݿ��ֶ�Ĭ��ֵ��insert�����������ֶΣ������null��
 

���ݿ���ƹ淶�����ʱ�ֶ�Ҫ����Ϊnot null��������Ĭ��ֵ������Ψһ������null�����ʧЧ�����Ƴ���
 

����������createorder�µ�����ع������µ������л����ˮ��id�ع���ʹ�ȵ���id�ſ�����һ�α�ʹ�� ��generatorOrderNo����ǰ��ע�⣺ @Transactional(propagation = Propagation.REQUIRES_NEW)
 

ʹ�þۺ�ģ����itemModel����PromoModel promoModel������Ϊ�ձ�ʾ����δ��������ɱ�����orderModel�м���promoId������Ϊ�գ�������ɱ��ʽ�µ�