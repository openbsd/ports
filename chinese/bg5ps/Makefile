# $OpenBSD: Makefile,v 1.10 2002/04/07 22:30:23 matt Exp $

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

PYTHON_VER=	2.1
RUN_DEPENDS=	::chinese/arphicttf \
		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
LIB_DEPENDS=	ttf.1::print/freetype

post-patch:
	perl -pi -e \
		"s|/usr/bin/python|${LOCALBASE}/bin/python${PYTHON_VER}|" \
		${WRKSRC}/bg5ps

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/bg5ps
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bg5ps
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bg5ps
	${INSTALL_DATA} ${WRKSRC}/bg5ps.conf ${PREFIX}/lib/bg5ps
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/doc/bg5ps
	cp -R ${WRKSRC}/examples/* ${PREFIX}/share/examples/bg5ps

.include <bsd.port.mk>
