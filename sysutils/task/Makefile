# $OpenBSD: Makefile,v 1.1.1.1 2002/09/18 07:21:48 jsyn Exp $

COMMENT=		"forensic toolkit based on TCT"

VERSION=		1.50
DISTNAME=		task-${VERSION}
CATEGORIES=		sysutils security
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sleuthkit/}

HOMEPAGE=		http://www.atstake.com/research/tools/task/	

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

# IBM & GPL
PERMIT_PACKAGE_CDROM=	"commercial contributor must indemnify all others"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial contributor must indemnify all others"
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes

DOCS=			README docs/* tct.docs/*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/task
	${INSTALL_SCRIPT} ${WRKSRC}/bin/mactime ${PREFIX}/bin
	cd ${WRKSRC}/bin && ${INSTALL_PROGRAM} dcalc dcat dls dstat ffind \
	  icat fls fsstat icat ifind ils istat ${PREFIX}/bin
	cd ${WRKSRC}/man/man1 && ${INSTALL_MAN} * ${PREFIX}/man/man1
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/task
	 
.include <bsd.port.mk>
