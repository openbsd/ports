# $OpenBSD: Makefile,v 1.7 2010/09/22 09:02:42 jasper Exp $
# Original from: Stephane Peter <megastep@megastep.org>

COMMENT=	script generating a self-extractible .tgz from a directory

DISTNAME=		makeself
PKGNAME=		makeself-1.5.5
REVISION=		0
CATEGORIES=		archivers misc

HOMEPAGE=		http://www.megastep.org/makeself/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_BACKUP}

EXTRACT_ONLY=
EXTRACT_SUFX=		.gz.sh

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

post-extract:
	@cd ${WRKDIR} && ${SH} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/makeself.sh ${PREFIX}/bin/makeself.sh

.include <bsd.port.mk>
