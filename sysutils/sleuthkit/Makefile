# $OpenBSD: Makefile,v 1.3 2004/12/20 10:35:36 alek Exp $

COMMENT=		"forensic toolkit based on TCT"

VERSION=		1.66
DISTNAME=		sleuthkit-${VERSION}
CATEGORIES=		sysutils security

HOMEPAGE=		http://www.sleuthkit.org/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sleuthkit/} \
			${MASTER_SITE_PACKETSTORM:=UNIX/utilities/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# IBM & GPL
PERMIT_PACKAGE_CDROM=	"commercial contributor must indemnify all others"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial contributor must indemnify all others"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=		CC="${CC}" OPT="${CFLAGS}" DEBUG=""

NO_REGRESS=		Yes

SCRIPTS=		mactime sorter
PROGRAMS=		dcalc dcat dls dstat ffind icat fls fsstat \
			icat ifind ils istat hfind mmls
DOCS=			README docs/* tct.docs/*
EXAMPLES=		share/sorter/*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sleuthkit
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sleuthkit
	cd ${WRKSRC}/bin && ${INSTALL_SCRIPT} ${SCRIPTS} ${PREFIX}/bin
	cd ${WRKSRC}/bin && ${INSTALL_PROGRAM} ${PROGRAMS} ${PREFIX}/bin
	cd ${WRKSRC}/man/man1 && ${INSTALL_MAN} * ${PREFIX}/man/man1
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/sleuthkit
	cd ${WRKSRC} && ${INSTALL_DATA} ${EXAMPLES} ${PREFIX}/share/examples/sleuthkit
	 
.include <bsd.port.mk>
