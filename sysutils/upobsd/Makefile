# $OpenBSD: Makefile,v 1.2 2018/01/06 14:34:17 landry Exp $

COMMENT =	download, verify and patch bsd.rd image

V =		ad19e93e1914
DISTNAME =	upobsd-0.0.20180106

CATEGORIES =	sysutils

HOMEPAGE =	https://bitbucket.org/semarie/upobsd

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c

MASTER_SITES =		https://bitbucket.org/semarie/upobsd/get/
DISTFILES =		${DISTNAME}{${V}}${EXTRACT_SUFX}

MAKE_ENV =		BINDIR=${LOCALBASE}/bin \
			MANDIR=${LOCALBASE}/man/man

NO_TEST =		Yes

post-extract:
	@mv ${WRKDIR}/semarie-upobsd-${V} ${WRKDIST}

.include <bsd.port.mk>
