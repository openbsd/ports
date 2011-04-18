# $OpenBSD: Makefile,v 1.2 2011/04/18 11:59:49 sebastia Exp $

COMMENT =	simple code editor for GNUstep

DISTNAME =	Gemas-0.1
REVISION =	0
PKGNAME =	gnustep-${DISTNAME:L}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Gemas.app
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=contrib/}

MODULES =	x11/gnustep
WANTLIB +=	c m pthread HighlighterKit

LIB_DEPENDS +=	x11/gnustep/highlighterkit

.include <bsd.port.mk>
