# $OpenBSD: Makefile,v 1.4 2012/04/30 19:22:08 jasper Exp $

COMMENT =	miscellaneous unix tools

DISTNAME =	moreutils_0.46
PKGNAME =	${DISTNAME:S/_/-/}
WRKDIST =	${WRKDIR}/moreutils

CATEGORIES =	sysutils

HOMEPAGE =	http://joey.kitenet.net/code/moreutils/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c

MASTER_SITES =		${MASTER_SITE_DEBIAN:=main/m/moreutils/}

BUILD_DEPENDS =		textproc/docbook2x
RUN_DEPENDS =		devel/p5-IPC-Run \
			devel/p5-Time-Duration \
			devel/p5-Time-TimeDate

MAKE_FLAGS =		DOCBOOK2XMAN=docbook2man
FAKE_FLAGS =		PREFIX=${PREFIX}
USE_GMAKE =		Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
