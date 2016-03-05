# $OpenBSD: Makefile,v 1.19 2016/03/05 16:04:10 pascal Exp $

COMMENT =	GNUstep webservices framework

VERSION =	0.7.2
REVISION =	2
DISTNAME =	WebServices-${VERSION}
PKGNAME =	gnustep-webservices-${VERSION}
CATEGORIES =	www
SHARED_LIBS +=  WebServices	0.4

HOMEPAGE =	http://wiki.gnustep.org/index.php/WebServices
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
WANTLIB += 		Performance pthread gnutls
LIB_DEPENDS =		x11/gnustep/performance
MODGNUSTEP_IS_FRAMEWORK = Yes

CONFIGURE_STYLE =	gnu
MAKE_FLAGS +=	WebServices_INTERFACE_VERSION=${LIBWebServices_VERSION}

NO_TEST =	No
do-test:
	cd ${WRKSRC}/tests/ && LD_LIBRARY_PATH=../obj ./test

.include <bsd.port.mk>
