# $OpenBSD: Makefile,v 1.5 2018/09/18 02:30:43 bentley Exp $

V =		5.1.2
COMMENT =	WAD composer for Doom, Heretic, Hexen, and Strife
DISTNAME =	deutex-${V}
CATEGORIES =	archivers
REVISION =	0

HOMEPAGE =	https://github.com/Doom-Utils/deutex/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c png z

MASTER_SITES =	https://github.com/Doom-Utils/deutex/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

BUILD_DEPENDS =		textproc/asciidoc
LIB_DEPENDS =		graphics/png

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
