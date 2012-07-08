# $OpenBSD: Makefile,v 1.4 2012/07/08 13:59:07 sebastia Exp $

COMMENT =	framework for reading different types of RSS formats

DISTNAME =	RSSKit-0.4

SHARED_LIBS +=	RSSKit	0.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB +=	gnustep-base objc

MAKE_FLAGS =	RSSKit_INTERFACE_VERSION=${LIBRSSKit_VERSION}

.include <bsd.port.mk>
