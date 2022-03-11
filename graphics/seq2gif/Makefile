COMMENT =	convert ttyrec recording into an animated gif

# Available releases are severely outdated, unfortunately.
# Ship a recent development snapshot state as a "pre-release" version.
# Should allow seamless upgrades when upstream decides to ship
# regular releases again (next release should be 0.10.4).
DISTNAME =	seq2gif-0.10.4pre1
GH_ACCOUNT =	saitoha
GH_PROJECT =	seq2gif
GH_COMMIT =	2ec7079b5c3080fff98c1f706c2255ca218bfc8a

CATEGORIES =	graphics

HOMEPAGE =	https://saitoha.github.io/seq2gif/

# GPLv3, MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c
CONFIGURE_STYLE =	gnu

# Not strictly required, but this tool is pointless without ttyrec.
RUN_DEPENDS =	misc/ttyrec

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
