# $OpenBSD: Makefile,v 1.20 2002/10/28 00:27:54 pvalchev Exp $

COMMENT= 	"PostScript and PDF previewer"

DISTNAME=	gv-3.5.8
PKGNAME=	${DISTNAME}p3
CATEGORIES=	print
MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Xaw3d.6.1::x11/Xaw3d
RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu

CONFIGURE_STYLE=	imake

INSTALL_TARGET=install install.man install.doc

post-install:
	${INSTALL_MAN} ${WRKSRC}/source/gv.0 ${PREFIX}/man/cat1

.include <bsd.port.mk>
