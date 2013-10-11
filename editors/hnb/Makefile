# $OpenBSD: Makefile,v 1.14 2013/10/11 23:49:30 naddy Exp $

COMMENT=	hierarchical notebook

DISTNAME=	hnb-1.9.17
REVISION=	0
CATEGORIES=	editors

HOMEPAGE=	http://hnb.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		c ncurses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hnb/}

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/src

ALL_TARGET=	

DOCS=		Documentation.html hnbrc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hnb
	${INSTALL_PROGRAM} ${WRKSRC}/hnb ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/../doc/hnb.1 ${PREFIX}/man/man1
	cd ${WRKSRC}/../doc && \
		${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/hnb

.include <bsd.port.mk> 
