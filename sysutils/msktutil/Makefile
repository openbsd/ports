# $OpenBSD: Makefile,v 1.1.1.1 2022/03/03 13:37:54 sthen Exp $

COMMENT=	tool for ActiveDirectory interoperability

GH_ACCOUNT=	msktutil
GH_PROJECT=	msktutil
GH_COMMIT=	58858f18026f9b167e15b395337343f7f1716fbe

DISTNAME=	msktutil-1.2pre20220111

CATEGORIES=	sysutils

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c lber ldap m

COMPILER=	base-clang ports-gcc
LIB_DEPENDS+=	databases/openldap
RUN_DEPENDS=	security/cyrus-sasl2,gssapi

CONFIGURE_STYLE= autoreconf
AUTORECONF=	./autogen.sh
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16

MODULES+=	security/heimdal
CONFIGURE_ARGS=	--with-krb5-config="/usr/local/heimdal/bin/krb5-config"

CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include" \
		LDFLAGS="-L/usr/local/lib -lcom_err"

NO_TEST=	Yes

.include <bsd.port.mk>
