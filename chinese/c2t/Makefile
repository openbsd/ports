# $OpenBSD: Makefile,v 1.10 2000/03/24 22:11:36 espie Exp $	

DISTNAME=	zh-c2t-1.0
CATEGORIES=	chinese
NEED_VERSION=	1.191

MAINTAINER=     kevlo@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.ifcss.org/pub/software/unix/convert/  \
		ftp://ftp.ifcss.org/pub/software/x-win/cxterm/dict/gb/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/unix/convert/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/x-win/cxterm/dict/gb/ \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/convert/  \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/x-win/cxterm/dict/gb/
DISTFILES=	c2t.tar.gz TONEPY.tit
EXTRACT_ONLY=	c2t.tar.gz

WRKDIST=	${WRKDIR}

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/chinese/gb
	${INSTALL_PROGRAM} ${WRKSRC}/c2t ${PREFIX}/bin
	${INSTALL_DATA} ${DISTDIR}/TONEPY.tit ${PREFIX}/share/chinese/gb
	${INSTALL_MAN} ${WRKSRC}/c2t.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
