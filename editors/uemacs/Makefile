# $OpenBSD: Makefile,v 1.21 2013/03/11 11:02:50 espie Exp $

COMMENT=	full screen simple editor

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors

HOMEPAGE=	http://uemacs.tripod.com/

PERMIT_PACKAGE_CDROM=	weird no fee license
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c termcap

MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip

EXTRACT_CASES=	*.zip) ${UNZIP} -Laq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

WRKDIST=	${WRKDIR}

pre-patch:
	@cd ${WRKDIR} && cp -pR freebsd openbsd

NO_TEST=	Yes

.include <bsd.port.mk>
