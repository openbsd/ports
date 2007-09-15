# $OpenBSD: Makefile,v 1.19 2007/09/15 23:29:58 merdely Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	Microsoft LANMAN & NT password sniffer/cracker

PKGNAME=	l0phtcrack-2.52
CATEGORIES=	security

MASTER_SITES=	${MASTER_SITE_BACKUP}
DISTFILES=	lcsrc.zip readsmb.c
EXTRACT_ONLY=	lcsrc.zip
DIST_SUBDIR=	l0phtcrack

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c des pcap

WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FULLDISTDIR}/readsmb.c ${WRKSRC}
	@(cd ${WRKSRC} ; \
	   for file in * ; do \
		tr -d '\r' < $$file > $$file.new ; \
		mv $$file.new $$file ; \
	   done)

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/l0phtcrack
	${INSTALL_DATA_DIR} ${PREFIX}/share/l0phtcrack
	${INSTALL_PROGRAM} ${WRKSRC}/lc ${PREFIX}/sbin/l0phtcrack
	${INSTALL_PROGRAM} ${WRKSRC}/readsmb ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/wfile.txt ${PREFIX}/share/l0phtcrack
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/l0phtcrack

.include <bsd.port.mk>
