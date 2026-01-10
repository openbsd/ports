COMMENT =		advanced revision control system written in Haskell

MODCABAL_STEM =		darcs
MODCABAL_VERSION =	2.18.5
CATEGORIES =		devel
HOMEPAGE =		http://www.darcs.net/

WANTLIB =		c charset curl>=2 curses ffi gmp iconv m \
			pthread util z

MODULES =		devel/cabal
MODCABAL_FLAGS =	curl -library

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi \
			net/curl

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} $$(find ${WRKBUILD} -name darcs.1 -print) ${PREFIX}/man/man1

# GPLv2
PERMIT_PACKAGE =	Yes

.include "cabal.inc"

.include <bsd.port.mk>
