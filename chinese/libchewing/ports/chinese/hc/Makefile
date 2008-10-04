# $OpenBSD: Makefile,v 1.1.1.1 2008/10/04 08:11:54 kevlo Exp $	

COMMENT=	convert between GB and BIG-5 codes

DISTNAME=	zh-hc-3.0
CATEGORIES=	chinese

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

# Fairly restrictive licence
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/convert/
DISTFILES=	hc-30.tar.gz hc-supp.tab
EXTRACT_ONLY=	hc-30.tar.gz

WRKDIST=	${WRKDIR}/hc3

ALL_TARGET=	hc b2g g2b

NO_REGRESS=	Yes

pre-patch:
	perl -pi -e 's|malloc.h|stdlib.h|' ${WRKSRC}/hclib.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hc
	${INSTALL_PROGRAM} ${WRKSRC}/hc ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/b2g ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/g2b ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/hc.tab ${PREFIX}/share/hc
	${INSTALL_DATA} ${FULLDISTDIR}/hc-supp.tab ${PREFIX}/share/hc
	${INSTALL_MAN} ${WRKSRC}/hc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
