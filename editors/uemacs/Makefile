# $OpenBSD: Makefile,v 1.19 2006/02/04 09:11:21 steven Exp $

COMMENT=	"full screen simple editor"

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors

HOMEPAGE=	http://uemacs.tripod.com/

PERMIT_PACKAGE_CDROM=	"weird no fee license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"weird no fee license"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip

EXTRACT_CASES=	*.zip) ${UNZIP} -Laq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

WRKDIST=	${WRKDIR}

pre-patch:
	@cd ${WRKDIR} && cp -pR freebsd openbsd

NO_REGRESS=	Yes

.include <bsd.port.mk>
