# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:32 espie Exp $

COMMENT =		statistical analyzer for binary streams

DISTNAME =		stan-0.4.1

REVISION = 		0

CATEGORIES =		sysutils

HOMEPAGE =		http://www.roqe.org/stan/

MAINTAINER =		Igor Zinovik <zinovik.igor@gmail.com>

# 4-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MASTER_SITES =		${HOMEPAGE}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
