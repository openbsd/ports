# $OpenBSD: Makefile,v 1.1.1.1 2014/11/06 02:57:12 stu Exp $

SHARED_ONLY =		Yes

COMMENT =		arc4random for Tcl

DISTNAME =		tclarc4random-0.3
CATEGORIES =		devel
HOMEPAGE =		http://www3.bell.net/stwo/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		aryler
GH_PROJECT =		Tclarc4random
GH_TAGNAME =		0.3
GH_COMMIT =		b5987ef2ec284eaef2240e3e886ba79c176bc28f

MODULES =		lang/tcl
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	itzev
CONFIGURE_ARGS +=	-tcl ${MODTCL_VERSION}

.include <bsd.port.mk>
