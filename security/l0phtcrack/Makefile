# $OpenBSD: Makefile,v 1.11 2002/03/21 21:25:51 espie Exp $

COMMENT=	"Microsoft LANMAN & NT password sniffer/cracker"

PKGNAME=	l0phtcrack-2.52
CATEGORIES=	security
NEED_VERSION=	1.515
MASTER_SITES=	http://www.l0pht.com/l0phtcrack/dist/
DISTFILES=	lcsrc.zip readsmb.c
EXTRACT_ONLY=	lcsrc.zip
DIST_SUBDIR=	l0phtcrack

MAINTAINER=	Dug Song <dugsong@monkey.org>

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
