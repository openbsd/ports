# $OpenBSD: Makefile,v 1.8 2014/05/22 09:48:57 sebastia Exp $

COMMENT =	framework for reading different types of RSS formats

DISTNAME =	RSSKit-0.4
REVISION =	3

SHARED_LIBS +=	RSSKit	0.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += 	gnustep-base objc2 pthread

MAKE_FLAGS =	RSSKit_INTERFACE_VERSION=${LIBRSSKit_VERSION}

.include <bsd.port.mk>
