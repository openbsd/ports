# $OpenBSD: Makefile,v 1.1.1.1 2007/10/22 19:09:55 steven Exp $

PKG_ARCH=	*

COMMENT=	high-level widget set for Tcl/Tk

V=		1.8.0
DISTNAME=	BWidget-$V
PKGNAME=	bwidget-$V
CATEGORIES=	x11/tk

HOMEPAGE=	http://sourceforge.net/projects/tcllib/

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcllib/}

RUN_DEPENDS=	:tk-8.4*:x11/tk/8.4

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/bwidget
	cd ${WRKSRC} && tar cf - * | tar -C ${PREFIX}/lib/bwidget -xf -
	cd ${PREFIX}/lib/bwidget && rm -rf BWman *.txt ChangeLog
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/bwidget
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bwidget
	${INSTALL_DATA} ${WRKSRC}/BWman/* ${WRKSRC}/README.txt \
		${PREFIX}/share/doc/bwidget

.include <bsd.port.mk>
