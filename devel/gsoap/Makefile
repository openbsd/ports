COMMENT=		SOAP/REST Web Services and XML-Based apps toolkit

V=			2.8.131
DISTNAME=		gsoap_${V}
PKGNAME=		gsoap-${V}
EXTRACT_SUFX=		.zip
WRKDIST=		${WRKDIR}/gsoap-${V:R}

REVISION=		0

SHARED_LIBS +=		gsoap++		0.0 # 0.0
SHARED_LIBS +=		gsoap		0.0 # 0.0
SHARED_LIBS +=		gsoapck++	0.0 # 0.0
SHARED_LIBS +=		gsoapck		0.0 # 0.0
SHARED_LIBS +=		gsoapssl++	0.0 # 0.0
SHARED_LIBS +=		gsoapssl	0.0 # 0.0

CATEGORIES=		devel

HOMEPAGE=		https://www.cs.fsu.edu/~engelen/soap.html

# MPL-like - GPLv2
PERMIT_PACKAGE=	Yes

AUTOCONF_VERSION=	2.67
AUTOMAKE_VERSION=	1.11

WANTLIB += ${COMPILER_LIBCXX} c crypto m pthread ssl z

COMPILER =		base-clang ports-gcc base-gcc

SITES=			${SITE_SOURCEFORGE:=gsoap2/gSOAP/}

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-DWITH_NO_C_LOCALE=1" LDFLAGS="-pthread"

.include <bsd.port.mk>
