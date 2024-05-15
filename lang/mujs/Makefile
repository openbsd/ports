COMMENT =		lightweight Javascript interpreter

SHARED_LIBS =		mujs 0.0

V =			1.3.4
DISTNAME =		mujs-$V

CATEGORIES =		lang www

HOMEPAGE =		https://mujs.com/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c m readline

SITES =			https://mujs.com/downloads/

MAKE_FLAGS =		OPTIM="${CFLAGS}" SO="so.${LIBmujs_VERSION}"

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		release
INSTALL_TARGET =	install-shared

.include <bsd.port.mk>
