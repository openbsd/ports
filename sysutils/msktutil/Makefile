COMMENT=	tool for ActiveDirectory interoperability

V=		1.2
DISTNAME=	msktutil-$V
MASTER_SITES=	https://github.com/msktutil/msktutil/releases/download/v$V/

CATEGORIES=	sysutils

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c lber ldap m

COMPILER=	base-clang ports-gcc
LIB_DEPENDS+=	databases/openldap
RUN_DEPENDS=	security/cyrus-sasl2,gssapi

CONFIGURE_STYLE= gnu

MODULES+=	security/heimdal
CONFIGURE_ARGS=	--with-krb5-config="/usr/local/heimdal/bin/krb5-config"

CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include" \
		LDFLAGS="-L/usr/local/lib -lcom_err"

NO_TEST=	Yes

.include <bsd.port.mk>
