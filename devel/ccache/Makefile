# $OpenBSD: Makefile,v 1.50 2019/06/03 16:06:51 sthen Exp $

COMMENT =	compiler cache

V =		3.7.1
DISTNAME =	ccache-$V
CATEGORIES =	devel

HOMEPAGE =	https://ccache.dev/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	 Yes

WANTLIB += c m z

MASTER_SITES =	https://github.com/ccache/ccache/releases/download/v$V/

CONFIGURE_STYLE =	gnu

# This port should not have build/run dependencies.
NO_CCACHE =		Yes

TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

pre-test:
	ln -s ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq

.include <bsd.port.mk>
