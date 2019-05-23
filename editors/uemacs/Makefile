# $OpenBSD: Makefile,v 1.24 2019/05/23 09:37:30 sthen Exp $

COMMENT=	full screen simple editor

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors
REVISION=	2

HOMEPAGE=	http://uemacs.tripod.com/

# see doc/readme
PERMIT_PACKAGE_CDROM=	can be copied and distributed freely for any non-commercial purposes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c curses

MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip

EXTRACT_CASES=	*.zip) ${UNZIP} -Laq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

WRKDIST=	${WRKDIR}

pre-patch:
	@cd ${WRKDIR} && cp -pR freebsd openbsd

NO_TEST=	Yes

.include <bsd.port.mk>
