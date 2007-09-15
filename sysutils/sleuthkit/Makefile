# $OpenBSD: Makefile,v 1.7 2007/09/15 21:14:02 merdely Exp $

COMMENT=		forensic toolkit based on TCT

VERSION=		1.73
DISTNAME=		sleuthkit-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils security

HOMEPAGE=		http://www.sleuthkit.org/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sleuthkit/} \
			${MASTER_SITE_PACKETSTORM:=UNIX/utilities/}

# IBM & GPL
PERMIT_PACKAGE_CDROM=	commercial contributor must indemnify all others
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial contributor must indemnify all others
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

RUN_DEPENDS=		:p5-DateManip-*:converters/p5-DateManip

MAKE_FLAGS=		CC="${CC}" OPT="${CFLAGS}" DEBUG=""

NO_REGRESS=		Yes

SCRIPTS=		mactime sorter
PROGRAMS=		dcalc dcat diskstat dls dstat ffind fls fsstat \
			hfind icat ifind ils istat jcat jls mmls sigfind \
			sstrings
DOCS=			README.txt docs/* tct.docs/*
SORTFILES=		share/sorter/*

pre-configure:
	@perl -pi -e "s:%%PREFIX%%:${PREFIX}:" ${WRKSRC}/src/sorter/install \
		${WRKSRC}/man/man1/sorter.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sleuthkit
	${INSTALL_DATA_DIR} ${PREFIX}/share/sleuthkit
	${INSTALL_DATA_DIR} ${PREFIX}/share/sleuthkit/sorter
	cd ${WRKSRC}/bin && ${INSTALL_SCRIPT} ${SCRIPTS} ${PREFIX}/bin
	cd ${WRKSRC}/bin && ${INSTALL_PROGRAM} ${PROGRAMS} ${PREFIX}/bin
	cd ${WRKSRC}/man/man1 && ${INSTALL_MAN} * ${PREFIX}/man/man1
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/sleuthkit
	cd ${WRKSRC} && ${INSTALL_DATA} ${SORTFILES} \
		${PREFIX}/share/sleuthkit/sorter
	 
.include <bsd.port.mk>
