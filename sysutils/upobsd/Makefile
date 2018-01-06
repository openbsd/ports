# $OpenBSD: Makefile,v 1.1.1.1 2018/01/06 09:34:31 landry Exp $

COMMENT =	download, verify and patch bsd.rd image

V =		d8868e286065
DISTNAME =	upobsd-0.0.20180105

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
