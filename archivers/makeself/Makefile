# $OpenBSD: Makefile,v 1.1.1.1 2001/11/27 15:06:49 reinhard Exp $
# Original from: Stéphane Peter <megastep@megastep.org>

COMMENT=	"script generating a self-extractible .tgz from a directory"

DISTNAME=		makeself
PKGNAME=		makeself-1.5.5
CATEGORIES=		archivers misc
NEED_VERSION=		1.500

HOMEPAGE=		http://www.megastep.org/makeself/

MAINTAINER=		Reinhard J. Sammer <reinhard@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

EXTRACT_ONLY=
EXTRACT_SUFX=		.gz.sh

NO_BUILD=		Yes
NO_REGRESS=		Yes

post-extract:
	@cd ${WRKDIR} && ${SH} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/makeself.sh ${PREFIX}/bin/makeself.sh

.include <bsd.port.mk>
