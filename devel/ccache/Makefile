# $OpenBSD: Makefile,v 1.45 2018/10/16 14:14:28 sthen Exp $

COMMENT =	compiler cache

DISTNAME =	ccache-3.5
CATEGORIES =	devel

HOMEPAGE =	http://ccache.samba.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c m z

MASTER_SITES =	http://samba.org/ftp/ccache/

CONFIGURE_STYLE =	gnu

# This port should not have dependencies.
NO_CCACHE =		Yes

TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

pre-test:
	ln -s ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq

.include <bsd.port.mk>
