# $OpenBSD: Makefile,v 1.7 2020/02/09 13:28:00 benoit Exp $

V =		5.2.1
COMMENT =	WAD composer for Doom, Heretic, Hexen, and Strife
DISTNAME =	deutex-${V}
CATEGORIES =	archivers

HOMEPAGE =	https://github.com/Doom-Utils/deutex/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c png z

MASTER_SITES =	https://github.com/Doom-Utils/deutex/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

BUILD_DEPENDS =		textproc/asciidoc
LIB_DEPENDS =		graphics/png

CONFIGURE_STYLE =	gnu

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
