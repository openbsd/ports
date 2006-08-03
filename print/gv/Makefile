# $OpenBSD: Makefile,v 1.27 2006/08/03 23:28:11 espie Exp $

COMMENT= 	"PostScript and PDF previewer"

DISTNAME=	gv-3.5.8
PKGNAME=	${DISTNAME}p4
CATEGORIES=	print

HOMEPAGE=	http://wwwthep.physik.uni-mainz.de/~plass/gv/

MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Xpm Xmu X11 m c Xt SM Xp Xext ICE

LIB_DEPENDS=	Xaw3d.>=6.1::x11/Xaw3d
RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

INSTALL_TARGET=	install install.man install.doc

pre-configure:
	perl -pi.bak ${.CURDIR}/fixincludes ${WRKSRC}/source/*.[ch]

post-install:
	${INSTALL_MAN} ${WRKSRC}/source/gv.0 ${PREFIX}/man/cat1


.include <bsd.port.mk>
