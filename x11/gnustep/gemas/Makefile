# $OpenBSD: Makefile,v 1.8 2013/10/19 13:24:58 sebastia Exp $

COMMENT =	simple code editor for GNUstep

DISTNAME =	Gemas-0.3
REVISION =	3
PKGNAME =	gnustep-${DISTNAME:L}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Gemas.app
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
WANTLIB +=	c m pthread HighlighterKit

LIB_DEPENDS +=	x11/gnustep/highlighterkit

.include <bsd.port.mk>
