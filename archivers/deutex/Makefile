V =		5.2.2
COMMENT =	WAD composer for Doom, Heretic, Hexen, and Strife
DISTNAME =	deutex-${V}
CATEGORIES =	archivers

HOMEPAGE =	https://github.com/Doom-Utils/deutex/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c png z

MASTER_SITES =	https://github.com/Doom-Utils/deutex/releases/download/v${V}/
EXTRACT_SUFX =	.tar.zst

BUILD_DEPENDS =		textproc/asciidoc
LIB_DEPENDS =		graphics/png

CONFIGURE_STYLE =	gnu

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
