# $OpenBSD: Makefile,v 1.4 2011/05/20 07:29:49 sebastia Exp $

COMMENT =	framework for highlighting and coloring syntax

DISTNAME =	HighlighterKit-0.1.1

SHARED_LIBS =	HighlighterKit 0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/HighlighterKit
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
MODGNUSTEP_NEEDS_BASE =	NO
MODGNUSTEP_NEEDS_GUI = 	NO

BUILD_DEPENDS +=	x11/gnustep/gui

MAKE_FLAGS =	HighlighterKit_INTERFACE_VERSION=${LIBHighlighterKit_VERSION}

.include <bsd.port.mk>
