# $OpenBSD: Makefile,v 1.9 2002/03/21 20:35:43 espie Exp $

COMMENT=	"convert Big5/GB encoded files to postscript"

DISTNAME=       bg5ps-1.3.0
PKGNAME=	zh-${DISTNAME}
CATEGORIES=     chinese x11
NEED_VERSION=	1.515

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

MASTER_SITES=	ftp://freebsd.sinica.edu.tw/pub/keith/	\
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/chinese/bg5ps/

RUN_DEPENDS=	::chinese/arphicttf \
		:python-2.1*:lang/python/2.1
LIB_DEPENDS=	ttf.1::print/freetype

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/bg5ps
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bg5ps
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bg5ps
	${INSTALL_DATA} ${WRKSRC}/bg5ps.conf ${PREFIX}/lib/bg5ps
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/doc/bg5ps
	cp -R ${WRKSRC}/examples/* ${PREFIX}/share/examples/bg5ps

.include <bsd.port.mk>
