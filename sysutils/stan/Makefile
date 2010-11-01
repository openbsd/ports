# $OpenBSD: Makefile,v 1.3 2010/11/01 19:25:57 steven Exp $

COMMENT =		statistical analyzer for binary streams

DISTNAME =		stan-0.4.1

REVISION = 		0

CATEGORIES =		sysutils

HOMEPAGE =		http://www.roqe.org/stan/

MAINTAINER =		Igor Zinovik <zinovik.igor@gmail.com>

# 4-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m

MASTER_SITES =		${HOMEPAGE}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
