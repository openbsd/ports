# $OpenBSD: Makefile,v 1.16 2001/04/14 14:43:04 espie Exp $

COMMENT= 	"PostScript and PDF previewer"

DISTNAME=	gv-3.5.8
CATEGORIES=	print
NEED_VERSION=	1.394
MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/


# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Xaw3d.6.1::x11/Xaw3d
RUN_DEPENDS=	gs:ghostscript-*:print/ghostscript/gnu


CONFIGURE_STYLE=	imake

INSTALL_TARGET=install install.man install.doc

post-install:
	${INSTALL_MAN} ${WRKSRC}/source/gv.0 ${PREFIX}/man/cat1

.include <bsd.port.mk>
