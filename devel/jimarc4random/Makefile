# $OpenBSD: Makefile,v 1.1.1.1 2014/11/06 02:55:53 stu Exp $

SHARED_ONLY =		Yes

COMMENT =		arc4random for Jim

DISTNAME =		jimarc4random-0.3
CATEGORIES =		devel
HOMEPAGE =		http://www3.bell.net/stwo/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB	=		jim

GH_ACCOUNT =		aryler
GH_PROJECT =		Jimarc4random
GH_TAGNAME =		0.3
GH_COMMIT =		0c411f7cba9b1affb363dabf98f47d9c44ff964e

BUILD_DEPENDS =		lang/jimtcl
RUN_DEPENDS =		lang/jimtcl
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	itzev

.include <bsd.port.mk>
