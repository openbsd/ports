# $OpenBSD: Makefile,v 1.1.1.1 2011/01/07 07:35:06 sebastia Exp $

COMMENT =	simple code editor for GNUstep

DISTNAME =	Gemas-0.1
PKGNAME =	gnustep-${DISTNAME:L}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Gemas.app
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=contrib/}

MODULES =	x11/gnustep
WANTLIB +=	c m pthread HighlighterKit

LIB_DEPENDS +=	x11/gnustep/highlighterkit

.include <bsd.port.mk>
