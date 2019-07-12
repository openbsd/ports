# $OpenBSD: Makefile,v 1.6 2019/07/12 20:43:27 sthen Exp $

V =		5.1.2
COMMENT =	WAD composer for Doom, Heretic, Hexen, and Strife
DISTNAME =	deutex-${V}
CATEGORIES =	archivers
REVISION =	0

HOMEPAGE =	https://github.com/Doom-Utils/deutex/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c png z

MASTER_SITES =	https://github.com/Doom-Utils/deutex/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

BUILD_DEPENDS =		textproc/asciidoc
LIB_DEPENDS =		graphics/png

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
