# $OpenBSD: Makefile,v 1.15 2019/07/12 20:44:10 sthen Exp $

COMMENT=		SOAP/REST Web Services and XML-Based apps toolkit

V=			2.8.82
DISTNAME=		gsoap_${V}
PKGNAME=		gsoap-${V}
EXTRACT_SUFX=		.zip
WRKDIST=		${WRKDIR}/gsoap-${V:R}

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


WANTLIB += c crypto m pthread ssl ${LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gsoap2/gSOAP/}

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-DWITH_NO_C_LOCALE=1" LDFLAGS="-pthread"

.include <bsd.port.mk>
