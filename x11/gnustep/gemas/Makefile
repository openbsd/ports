# $OpenBSD: Makefile,v 1.10 2014/10/06 16:58:17 sebastia Exp $

COMMENT =	simple code editor for GNUstep

DISTNAME =	Gemas-0.4
PKGNAME =	gnustep-${DISTNAME:L}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Gemas.app
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
WANTLIB +=	HighlighterKit

LIB_DEPENDS +=	x11/gnustep/highlighterkit

.include <bsd.port.mk>
