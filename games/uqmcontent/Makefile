# $OpenBSD: Makefile,v 1.1.1.1 2003/04/11 09:17:18 wilfried Exp $

COMMENT=	"ur-quan masters content package"

DISTNAME=	uqm-0.2-content
EXTRACT_SUFX=	.zip
PKGNAME=	uqmcontent-0.2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sc2/}

MDIST=		uqm-0.2-3domusic
VDIST=		uqm-0.2-voice
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

HOMEPAGE=	http://sc2.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

PERMIT_PACKAGE_CDROM=	"Unresolved licensing issues"
PERMIT_PACKAGE_FTP=	"Unresolved licensing issues"
PERMIT_DISTFILES_CDROM=	"Unresolved licensing issues"
PERMIT_DISTFILES_FTP=	"Unresolved licensing issues"

NO_BUILD=	Yes
NO_REGRESS=	Yes

FLAVORS=	3domusic voice
FLAVOR?=

.if ${FLAVOR:L:M3domusic}
DISTFILES+=${MDIST}${EXTRACT_SUFX}:0
.endif

.if ${FLAVOR:L:Mvoice}
DISTFILES+=${VDIST}${EXTRACT_SUFX}:1
.endif

WRKDIST=	${WRKDIR}/${PKGNAME}

do-extract:
	@mkdir -p ${WRKDIST}
.for N in ${DISTFILES:C/:[0-9]$//}
	${UNZIP} -q ${FULLDISTDIR}/${N} -d ${WRKDIST}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/uqm
	@cp -R ${WRKDIST}/* ${PREFIX}/share/uqm

post-install:
	@find ${PREFIX}/share/uqm -type f -print0 | xargs -0 chmod 444

.include <bsd.port.mk>
