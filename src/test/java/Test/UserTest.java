package Test;

import sshh.pojo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.Reader;

public class UserTest {

    @Test
    public void userFindByIdTest() {

        String resources = "mybatis-config.xml";

        Reader r = null;
        try {

            r = Resources.getResourceAsReader(resources);
            SqlSessionFactory m = new SqlSessionFactoryBuilder().build(r);
            SqlSession s = m.openSession();
            User u = s.selectOne("findById",1);
            System.out.println(u.getUname());
            s.close();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
}
