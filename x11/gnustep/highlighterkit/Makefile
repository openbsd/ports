# $OpenBSD: Makefile,v 1.1.1.1 2011/01/07 07:33:32 sebastia Exp $

COMMENT =	framework for highlighting and coloring syntax

DISTNAME =	HighlighterKit-0.1
PKGNAME =	${DISTNAME:L}

SHARED_LIBS =	HighlighterKit 0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/HighlighterKit
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=contrib/}

MODULES =	x11/gnustep
MODGNUSTEP_NEEDS_BASE =	NO
MODGNUSTEP_NEEDS_GUI = 	NO

BUILD_DEPENDS +=	x11/gnustep/gui

MAKE_FLAGS =	HighlighterKit_INTERFACE_VERSION=${LIBHighlighterKit_VERSION}

.include <bsd.port.mk>
