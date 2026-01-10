COMMENT =		lightweight Javascript interpreter

SHARED_LIBS =		mujs 0.0

V =			1.3.8
DISTNAME =		mujs-$V

CATEGORIES =		lang www

HOMEPAGE =		https://mujs.com/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c m readline

SITES =			https://mujs.com/downloads/
DISTFILES.txt =		SpecialCasing.txt UnicodeData.txt
SITES.txt =		https://www.unicode.org/Public/16.0.0/ucd/

EXTRACT_CASES =		*.txt) cp ${FULLDISTDIR}/$$archive ${WRKSRC} ;;

MODULES =		lang/python
MODPY_RUNDEP =		No

MAKE_FLAGS =		OPTIM="${CFLAGS}" SO="so.${LIBmujs_VERSION}"

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		release
INSTALL_TARGET =	install-shared

.include <bsd.port.mk>
