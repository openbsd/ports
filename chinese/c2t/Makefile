# $OpenBSD: Makefile,v 1.7 2000/02/12 08:41:08 turan Exp $	

DISTNAME=	zh-c2t-1.0
CATEGORIES=	chinese

MAINTAINER=     kevlo@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	ftp://ftp.ifcss.org/pub/software/unix/convert/  \
		ftp://ftp.ifcss.org/pub/software/x-win/cxterm/dict/gb/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/unix/convert/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/x-win/cxterm/dict/gb/ \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/convert/  \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/x-win/cxterm/dict/gb/
DISTFILES=	c2t.tar.gz TONEPY.tit
EXTRACT_ONLY=	c2t.tar.gz
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/chinese/gb
	${INSTALL_PROGRAM} ${WRKSRC}/c2t ${PREFIX}/bin
	${INSTALL_DATA} ${DISTDIR}/TONEPY.tit ${PREFIX}/share/chinese/gb
	${INSTALL_MAN} ${WRKSRC}/c2t.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
