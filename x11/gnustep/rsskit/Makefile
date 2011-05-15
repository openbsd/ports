# $OpenBSD: Makefile,v 1.2 2011/05/15 13:03:26 sebastia Exp $

COMMENT =	framework for reading different types of RSS formats

DISTNAME =	RSSKit-0.3

SHARED_LIBS +=	RSSKit	0.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	http://savannah.nongnu.org/download/gap/

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB +=	gnustep-base

MAKE_FLAGS =	RSSKit_INTERFACE_VERSION=${LIBRSSKit_VERSION}

.include <bsd.port.mk>
