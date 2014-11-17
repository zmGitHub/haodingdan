package struts2.integer;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;
import java.util.Set;

public class FilterEncoding implements Filter {
    protected String encoding; // 接收字符编码
    protected FilterConfig filterConfig; // 初始化配置

    public void init(FilterConfig filterConfig) throws ServletException {
        encoding = filterConfig.getInitParameter("encoding");
    }

    @SuppressWarnings("unchecked")
    public void doFilter(ServletRequest req, ServletResponse resp,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        request.setCharacterEncoding(encoding);
        response.setContentType("text/html;charset=" + encoding);
        // 处理GET参数
        if (request.getMethod().equalsIgnoreCase("get")) {
            Map paramMap = req.getParameterMap();
            String[] queryStringArray = {""};
            if (request.getQueryString() != null) {
                queryStringArray = request.getQueryString().split("&");
            }
            for (int i = 0; i < queryStringArray.length; i++) {
                queryStringArray[i] = queryStringArray[i].replaceAll("(.*)=(.*)", "$1");
            }
            Set<String> keySet = paramMap.keySet();
            for (String key : keySet) {
                // check where param from
                boolean isFromGet = false;
                for (String paramFromGet : queryStringArray) {
                    if (key.equals(paramFromGet)) {
                        isFromGet = true;
                    }
                }
                if (!isFromGet) {
                    continue;
                }
                String[] paramArray = (String[]) paramMap.get(key);
                for (int i = 0; i < paramArray.length; i++) {
                    paramArray[i] = new String(paramArray[i].getBytes("iso-8859-1"), encoding);
                }
            }
        }
        chain.doFilter(request, response);
    }

    public void destroy() {

    }
}
