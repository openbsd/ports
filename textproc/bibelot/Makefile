# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:40 espie Exp $

COMMENT=	format/convert text documents into compressed .pdb files

VERSION=	0.9.4
PROG=		bibelot
DISTNAME=	${PROG}-${VERSION}
CATEGORIES=	textproc
REVISION=	0

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

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
