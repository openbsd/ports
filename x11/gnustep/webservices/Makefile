COMMENT =	GNUstep webservices framework

VERSION =	0.9.0
DISTNAME =	WebServices-${VERSION}
PKGNAME =	gnustep-webservices-${VERSION}
CATEGORIES =	www
SHARED_LIBS +=  WebServices	0.5
REVISION =	0

HOMEPAGE =	http://wiki.gnustep.org/index.php/WebServices
SITES =		${SITE_GNUSTEP:=libs/}

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
