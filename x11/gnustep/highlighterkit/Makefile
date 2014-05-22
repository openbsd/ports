# $OpenBSD: Makefile,v 1.10 2014/05/22 09:48:56 sebastia Exp $

COMMENT =	framework for highlighting and coloring syntax

DISTNAME =	HighlighterKit-0.1.2
REVISION =	4
SHARED_LIBS =	HighlighterKit 0.1

HOMEPAGE =	http://wiki.gnustep.org/index.php/HighlighterKit
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += 	pthread

BUILD_DEPENDS +=	x11/gnustep/gui

LIBDIR =	lib/GNUstep/Frameworks/HighlighterKit.framework/Versions/${LIBHighlighterKit_VERSION}
SUBST_VARS +=	LIBDIR

MAKE_FLAGS =	HighlighterKit_INTERFACE_VERSION=${LIBHighlighterKit_VERSION}

.include <bsd.port.mk>
