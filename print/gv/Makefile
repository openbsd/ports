# $OpenBSD: Makefile,v 1.22 2003/06/04 01:32:06 margarida Exp $

COMMENT= 	"PostScript and PDF previewer"

DISTNAME=	gv-3.5.8
PKGNAME=	${DISTNAME}p3
CATEGORIES=	print

HOMEPAGE=	http://wwwthep.physik.uni-mainz.de/~plass/gv/

MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Xaw3d.6.1::x11/Xaw3d
RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

INSTALL_TARGET=	install install.man install.doc

post-install:
	${INSTALL_MAN} ${WRKSRC}/source/gv.0 ${PREFIX}/man/cat1

.include <bsd.port.mk>
