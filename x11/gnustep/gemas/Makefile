# $OpenBSD: Makefile,v 1.13 2016/03/05 16:04:08 pascal Exp $

COMMENT =	simple code editor for GNUstep

REVISION =	2
DISTNAME =	Gemas-0.4
PKGNAME =	gnustep-${DISTNAME:L}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Gemas.app
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
WANTLIB +=	HighlighterKit

LIB_DEPENDS +=	x11/gnustep/highlighterkit

.include <bsd.port.mk>
