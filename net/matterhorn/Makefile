COMMENT =		terminal client for the Mattermost chat system

BROKEN-aarch64 =	undefined symbol 'binary..._zdfBinaryFixedzugo_closure'

MODCABAL_STEM =		matterhorn
MODCABAL_VERSION =	90000.0.0
REVISION =		2

CATEGORIES =		net

HOMEPAGE =		https://github.com/matterhorn-chat/matterhorn

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += c curses ffi gmp iconv m pthread util z

MODULES =		devel/cabal
LIB_DEPENDS =		converters/libiconv \
			devel/libffi \
			devel/gmp

NO_TEST =		Yes

WRKDIST =		${WRKDIR}
WRKSRC =		${WRKDIR}/${DISTNAME}

MODCABAL_BUILD_ARGS	= --allow-newer

.include "cabal.inc"

.include <bsd.port.mk>
