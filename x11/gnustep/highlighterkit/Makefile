# $OpenBSD: Makefile,v 1.9 2013/10/19 13:25:00 sebastia Exp $

COMMENT =	framework for highlighting and coloring syntax

DISTNAME =	HighlighterKit-0.1.2
REVISION =	3
SHARED_LIBS =	HighlighterKit 0.1

HOMEPAGE =	http://wiki.gnustep.org/index.php/HighlighterKit
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
MODGNUSTEP_NEEDS_BASE =	NO
MODGNUSTEP_NEEDS_GUI = 	NO

BUILD_DEPENDS +=	x11/gnustep/gui

LIBDIR =	lib/GNUstep/Frameworks/HighlighterKit.framework/Versions/${LIBHighlighterKit_VERSION}
SUBST_VARS +=	LIBDIR

MAKE_FLAGS =	HighlighterKit_INTERFACE_VERSION=${LIBHighlighterKit_VERSION}

.include <bsd.port.mk>
