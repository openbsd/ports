# $OpenBSD: Makefile,v 1.8 2004/11/24 11:08:03 espie Exp $

COMMENT=	"hierarchical notebook"

DISTNAME=	hnb-1.9.17
CATEGORIES=	editors

HOMEPAGE=	http://hnb.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
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
