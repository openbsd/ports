# $OpenBSD: Makefile,v 1.1.1.1 2001/06/15 22:55:33 pvalchev Exp $

COMMENT=	"format/convert text documents into compressed .pdb files"

VERSION=	0.9.4
PROG=		bibelot
DISTNAME=	${PROG}-${VERSION}
CATEGORIES=	palm textproc
NEED_VERSION=	1.414

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HOMEPAGE=	http://sourceforge.net/projects/bibelot

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= ${PROG}

NO_BUILD=	Yes
WRKDIST=	${WRKDIR}/${PROG}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PROG}.pl ${PREFIX}/bin/${PROG}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PROG}
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/${PROG}

.include <bsd.port.mk>
