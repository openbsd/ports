COMMENT=	provide ldap authentication type

DISTNAME=	login_ldap-3.51
REVISION=	10
CATEGORIES=	sysutils

HOMEPAGE=	https://sourceforge.net/projects/login-ldap/
SITES=		${SITE_SOURCEFORGE:=login-ldap/}

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c lber ldap

LIB_DEPENDS=	databases/openldap
NO_TEST=	Yes

pre-configure:
	@perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_ldap.8

.include <bsd.port.mk>
