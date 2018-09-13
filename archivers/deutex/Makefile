# $OpenBSD: Makefile,v 1.4 2018/09/13 19:20:04 bcallah Exp $

V =		5.1.2
COMMENT =	WAD composer for Doom, Heretic, Hexen, and Strife
DISTNAME =	deutex-${V}
CATEGORIES =	archivers

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c png z

MASTER_SITES =	https://github.com/Doom-Utils/deutex/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

BUILD_DEPENDS =		textproc/asciidoc
LIB_DEPENDS =		graphics/png

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
