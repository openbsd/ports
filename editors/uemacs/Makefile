# $OpenBSD: Makefile,v 1.17 2002/10/26 00:39:15 naddy Exp $

COMMENT=	"full screen simple editor"

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors

HOMEPAGE=	http://uemacs.tripod.com/

PERMIT_PACKAGE_CDROM=	"weird no fee license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"weird no fee license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE} \
		ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip

EXTRACT_CASES=	*.zip) ${UNZIP} -Laq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

WRKDIST=	${WRKDIR}

pre-patch:
	@cd ${WRKDIR} && cp -pR freebsd openbsd

NO_REGRESS=	Yes

.include <bsd.port.mk>
