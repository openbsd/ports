COMMENT =	reactive programming and data binding header-only library

PKGNAME=	${DISTNAME:L}

DIST_TUPLE +=	github KDAB KDBindings v1.1.0 .

CATEGORIES =	x11 devel

# BSD / MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

NO_BUILD =		Yes

pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
