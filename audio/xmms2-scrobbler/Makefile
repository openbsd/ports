COMMENT =		last.fm client for xmms2

DISTNAME =		xmms2-scrobbler-0.4.0
REVISION =		2

CATEGORIES =		audio

HOMEPAGE =		http://code-monkey.de/pages/xmms2-scrobbler

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c curl m pthread xmmsclient

SITES =			ftp://ftp.code-monkey.de/pub/xmms2-scrobbler/

LIB_DEPENDS =		audio/xmms2 \
			net/curl

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
