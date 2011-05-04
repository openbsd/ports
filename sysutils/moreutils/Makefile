# $OpenBSD: Makefile,v 1.1.1.1 2011/05/04 14:11:59 sthen Exp $

COMMENT =	miscellaneous unix tools

DISTNAME =	moreutils_0.44
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

MASTER_SITES = 		http://ftp.de.debian.org/debian/pool/main/m/moreutils/

BUILD_DEPENDS =		textproc/docbook2x
RUN_DEPENDS =		devel/p5-IPC-Run \
			devel/p5-Time-Duration \
			devel/p5-Time-TimeDate

MAKE_FLAGS =		DOCBOOK2XMAN=docbook2man
FAKE_FLAGS =		PREFIX=${PREFIX}
USE_GMAKE =		Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
