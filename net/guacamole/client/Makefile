MASTER_SITES=	${MASTER_SITE_APACHE:=guacamole/$V/binary/}
DISTNAME=	guacamole-$V
DISTFILES=	guacamole-$V.war

COMMENT-main=	clientless remote desktop gateway, web application
COMMENT-duo=	Guacamole extension for Duo authentication
COMMENT-header=	Guacamole extension for HTTP header authentication
COMMENT-jdbc=	Guacamole extension for database authentication via JDBC
COMMENT-json=	Guacamole extension for encrypted JSON authentication
COMMENT-quickconnect=	Guacamole extension for URI-based connections
COMMENT-ldap=	Guacamole extension for LDAP authentication
COMMENT-sso=	Guacamole extension for various single-sign-on providers
COMMENT-totp=	Guacamole extension for TOTP (time-based OTP)

MULTI_PACKAGES=	-main
# sso [cas, openid, saml]
AUTHS=		duo header jdbc json quickconnect ldap sso totp
.for a in ${AUTHS}
MULTI_PACKAGES+= -$a
DISTFILES+=	guacamole-auth-$a-$V.tar.gz
EXTRACT_ONLY+=	guacamole-auth-$a-$V.tar.gz
PKGNAME-$a=	guacamole-auth-$a-$V
.endfor

MASTER_SITES0=	https://

# hold at 9.x MS driver; 10.x defaults to using TLS encryption and needs
# a connection string to disable, but guacamole-auth-jdbc-sqlserver doesn't
# allow setting this, only host/user/pass.
.for liburl libjar libver in \
	github.com/microsoft/mssql-jdbc/releases/download/v9.4.1 mssql-jdbc -9.4.1.jre8 \
	jdbc.postgresql.org/download postgresql -42.3.3 \
	downloads.mariadb.com/Connectors/java/connector-java-2.7.3 mariadb-java-client -2.7.3
DISTFILES+=	{${liburl}/}${libjar}${libver}.jar:0
LIBS+=		${libjar}${libver}.jar ${libjar}.jar
.endfor

RUN_DEPENDS=	www/tomcat/v9

NO_BUILD=	Yes
NO_TEST=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/guacamole{,/extensions,/lib} \
	    ${PREFIX}/share/examples/guacamole
	${INSTALL_DATA} ${FULLDISTDIR}/guacamole-$V.war \
	    ${PREFIX}/share/guacamole/guacamole.war
	${INSTALL_DATA} ${FILESDIR}/{guacamole.properties,user-mapping.xml} \
	    ${PREFIX}/share/examples/guacamole/

.for a in ${AUTHS}
	cd ${PREFIX}/share/guacamole/extensions; \
	for i in `find ${WRKSRC}/guacamole-auth-$a-$V -name '*.jar'`; do \
	    ${INSTALL_DATA} $$i `basename $$i | sed s/-$V//`; \
	done
	cd ${WRKSRC}/guacamole-auth-$a-$V; \
	[ -d doc ] && (cd doc; for i in `find . -type f`; do \
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/guacamole-auth-$a/`dirname $$i`; \
		${INSTALL_DATA} $$i ${PREFIX}/share/doc/guacamole-auth-$a/$$i; \
	done ); \
	for i in `find . -type f -and -path '*/schema/*'`; do \
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/guacamole-auth-$a/`dirname $$i`; \
		${INSTALL_DATA} $$i ${PREFIX}/share/doc/guacamole-auth-$a/$$i; \
	done
.endfor
.for i j in ${LIBS}
	${INSTALL_DATA} ${FULLDISTDIR}/$i ${PREFIX}/share/guacamole/lib/$j
.endfor

.include <bsd.port.mk>
