# $OpenBSD: Makefile,v 1.2 2002/03/25 23:26:02 espie Exp $	

COMMENT=	"convert between GB and BIG-5 codes"

DISTNAME=	zh-hc-3.0
CATEGORIES=	chinese
NEED_VERSION=	1.504

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

# Fairly restrictive licence
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/convert/
DISTFILES=	hc-30.tar.gz hc-supp.tab
EXTRACT_ONLY=	hc-30.tar.gz

WRKDIST=	${WRKDIR}/hc3

ALL_TARGET=	hc b2g g2b

pre-patch:
	perl -pi -e 's|malloc.h|stdlib.h|' ${WRKSRC}/hclib.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hc
	${INSTALL_PROGRAM} ${WRKSRC}/hc ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/b2g ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/g2b ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/hc.tab ${PREFIX}/share/hc
	${INSTALL_DATA} ${DISTDIR}/hc-supp.tab ${PREFIX}/share/hc
	${INSTALL_MAN} ${WRKSRC}/hc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
