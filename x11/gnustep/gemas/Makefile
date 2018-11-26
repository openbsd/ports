# $OpenBSD: Makefile,v 1.16 2018/11/26 14:17:12 sebastia Exp $

COMMENT =	simple code editor for GNUstep

REVISION =	5
DISTNAME =	Gemas-0.4
PKGNAME =	gnustep-${DISTNAME:L}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Gemas.app
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
WANTLIB +=	HighlighterKit
WANTLIB += ${COMPILER_LIBCXX}

LIB_DEPENDS +=	x11/gnustep/highlighterkit

.include <bsd.port.mk>
