# $OpenBSD: Makefile,v 1.1.1.1 2008/05/18 21:06:19 jasper Exp $

COMMENT =		statistical analyzer for binary streams

DISTNAME =		stan-0.4.1

CATEGORIES =		sysutils

HOMEPAGE =		http://www.roqe.org/stan/

MAINTAINER =		Igor Zinovik <zinovik@kspu.karelia.ru>

# 4-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m

MASTER_SITES =		${HOMEPAGE}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
