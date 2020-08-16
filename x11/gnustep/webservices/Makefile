# $OpenBSD: Makefile,v 1.27 2020/08/16 20:35:21 sebastia Exp $

COMMENT =	GNUstep webservices framework

VERSION =	0.7.3
REVISION =	6
DISTNAME =	WebServices-${VERSION}
PKGNAME =	gnustep-webservices-${VERSION}
CATEGORIES =	www
SHARED_LIBS +=  WebServices	0.4

HOMEPAGE =	http://wiki.gnustep.org/index.php/WebServices
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

WANTLIB += 		Performance pthread gnutls nettle

MODULES =		x11/gnustep
LIB_DEPENDS =		x11/gnustep/performance
MODGNUSTEP_IS_FRAMEWORK = Yes

CONFIGURE_STYLE =	gnu
MAKE_FLAGS +=	WebServices_INTERFACE_VERSION=${LIBWebServices_VERSION}

NO_TEST =	No
do-test:
	cd ${WRKSRC}/tests/ && LD_LIBRARY_PATH=../obj ./test

.include <bsd.port.mk>
