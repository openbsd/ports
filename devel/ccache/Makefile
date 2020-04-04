# $OpenBSD: Makefile,v 1.59 2020/04/04 20:36:26 sthen Exp $

COMMENT =	compiler cache

V =		3.7.9
DISTNAME =	ccache-$V
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://ccache.dev/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	 Yes

WANTLIB += c m z

MASTER_SITES =	https://github.com/ccache/ccache/releases/download/v$V/

CONFIGURE_STYLE =	gnu

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# This port should not have build/run dependencies.
NO_CCACHE =		Yes
DWZ =			:

# Failure in cpp1 test suire appears to be due to an embedded filename
# in a .o file present in one file, and not present in the file being
# compared with.
TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

pre-test:
	ln -s ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq

.include <bsd.port.mk>
