# $OpenBSD: Makefile,v 1.12 2016/06/03 11:57:58 sebastia Exp $

COMMENT =	framework for reading different types of RSS formats

REVISION =	7
DISTNAME =	RSSKit-0.4

SHARED_LIBS +=	RSSKit	0.0

HOMEPAGE =	http://gap.nongnu.org/grr/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += 	gnustep-base objc2 pthread

MAKE_FLAGS =	RSSKit_INTERFACE_VERSION=${LIBRSSKit_VERSION}

.include <bsd.port.mk>
