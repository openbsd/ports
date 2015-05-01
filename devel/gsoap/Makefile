# $OpenBSD: Makefile,v 1.5 2015/05/01 06:52:58 ajacoutot Exp $

COMMENT=		SOAP/REST Web Services and XML-Based apps toolkit

V=			2.8.22
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
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

AUTOCONF_VERSION=	2.67
AUTOMAKE_VERSION=	1.11


WANTLIB += c crypto m pthread ssl stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gsoap2/gSOAP/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-pthread"

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -f -i

.include <bsd.port.mk>
