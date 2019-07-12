# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:36 sthen Exp $

COMMENT =		arc4random for Jim

DISTNAME =		jimarc4random-0.3
CATEGORIES =		devel
HOMEPAGE =		http://www3.bell.net/stwo/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB	=		jim

GH_ACCOUNT =		aryler
GH_PROJECT =		Jimarc4random
GH_TAGNAME =		0.3

BUILD_DEPENDS =		lang/jimtcl
RUN_DEPENDS =		lang/jimtcl
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	itzev

.include <bsd.port.mk>
