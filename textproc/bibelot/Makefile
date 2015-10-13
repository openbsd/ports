# $OpenBSD: Makefile,v 1.3 2015/10/13 06:29:38 bentley Exp $

COMMENT=	format/convert text documents into compressed .pdb files

VERSION=	0.9.4
PROG=		bibelot
DISTNAME=	${PROG}-${VERSION}
CATEGORIES=	textproc
REVISION=	1

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

PERMIT_PACKAGE_CDROM=   Yes

HOMEPAGE=	http://sourceforge.net/projects/bibelot

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bibelot/}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
WRKDIST=	${WRKDIR}/${PROG}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PROG}.pl ${PREFIX}/bin/${PROG}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PROG}
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/${PROG}

.include <bsd.port.mk>
