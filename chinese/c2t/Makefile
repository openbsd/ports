# $OpenBSD: Makefile,v 1.27 2013/03/11 01:30:26 espie Exp $	

COMMENT=	translate GB/Big5 encoding to tone pinyin

DISTNAME=	zh-c2t-1.0
REVISION=	0
CATEGORIES=	chinese

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=	ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/convert/
MASTER_SITES0=	ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/x-win/cxterm/dict/gb/
DISTFILES=	c2t.tar.gz TONEPY.tit:0
EXTRACT_ONLY=	c2t.tar.gz

WRKDIST=	${WRKDIR}

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/chinese/gb
	${INSTALL_PROGRAM} ${WRKSRC}/c2t ${PREFIX}/bin
	${INSTALL_DATA} ${FULLDISTDIR}/TONEPY.tit ${PREFIX}/share/chinese/gb
	${INSTALL_MAN} ${WRKSRC}/c2t.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
