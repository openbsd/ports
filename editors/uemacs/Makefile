# $OpenBSD: Makefile,v 1.25 2019/07/14 00:39:35 naddy Exp $

COMMENT=	full screen simple editor

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors
REVISION=	2

HOMEPAGE=	http://uemacs.tripod.com/

# see doc/readme
PERMIT_PACKAGE=	Yes

WANTLIB += c curses

MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip

EXTRACT_CASES=	*.zip) ${UNZIP} -Laq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

WRKDIST=	${WRKDIR}

pre-patch:
	@cd ${WRKDIR} && cp -pR freebsd openbsd

NO_TEST=	Yes

.include <bsd.port.mk>
