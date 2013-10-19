# $OpenBSD: Makefile,v 1.7 2013/10/19 13:25:04 sebastia Exp $

COMMENT =	framework for reading different types of RSS formats

DISTNAME =	RSSKit-0.4
REVISION =	2

SHARED_LIBS +=	RSSKit	0.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB +=	gnustep-base objc2

MAKE_FLAGS =	RSSKit_INTERFACE_VERSION=${LIBRSSKit_VERSION}

.include <bsd.port.mk>
