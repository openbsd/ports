# $OpenBSD: Makefile,v 1.8 2000/09/12 15:37:34 brad Exp $

PKGNAME=	l0phtcrack-2.52
CATEGORIES=	security
NEED_VERSION=	1.328
MASTER_SITES=	http://www.l0pht.com/l0phtcrack/dist/
DISTFILES=	lcsrc.zip readsmb.c
EXTRACT_ONLY=	lcsrc.zip
DIST_SUBDIR=	l0phtcrack

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FULLDISTDIR}/readsmb.c ${WRKSRC}
	@(cd ${WRKSRC} ; \
	   for file in * ; do \
		tr -d '\r' < $$file > $$file.new ; \
		mv $$file.new $$file ; \
	   done)

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/l0phtcrack
	${INSTALL_DATA_DIR} ${PREFIX}/share/l0phtcrack
	${INSTALL_PROGRAM} ${WRKSRC}/lc ${PREFIX}/sbin/l0phtcrack
	${INSTALL_PROGRAM} ${WRKSRC}/readsmb ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/wfile.txt ${PREFIX}/share/l0phtcrack
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/l0phtcrack

.include <bsd.port.mk>
