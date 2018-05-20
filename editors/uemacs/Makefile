# $OpenBSD: Makefile,v 1.22 2018/05/20 08:32:01 espie Exp $

COMMENT=	full screen simple editor

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors
REVISION =	0

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
