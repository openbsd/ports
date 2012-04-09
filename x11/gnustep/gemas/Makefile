# $OpenBSD: Makefile,v 1.4 2012/04/09 17:54:57 sebastia Exp $

COMMENT =	simple code editor for GNUstep

DISTNAME =	Gemas-0.3
PKGNAME =	gnustep-${DISTNAME:L}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Gemas.app
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
WANTLIB +=	c m pthread HighlighterKit

LIB_DEPENDS +=	x11/gnustep/highlighterkit

.include <bsd.port.mk>
