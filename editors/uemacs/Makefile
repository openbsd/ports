# $OpenBSD: Makefile,v 1.15 2002/03/21 20:46:26 espie Exp $

COMMENT=	"full screen simple editor"

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors
NEED_VERSION=	1.515
MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip
EXTRACT_SUFX=	.zip

EXTRACT_CASES=	*.zip) ${UNZIP} -Laq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

PERMIT_PACKAGE_CDROM=	"weird no fee license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"wierd no fee license"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

pre-patch:
	@cd ${WRKDIR} && cp -pR freebsd openbsd

.include <bsd.port.mk>
