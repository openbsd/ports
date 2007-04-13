# $OpenBSD: Makefile,v 1.2 2007/04/13 14:29:38 sturm Exp $

COMMENT=	"printed circuit board layout tool"
DISTNAME=	pcb-20060822
PKGNAME=	${DISTNAME}p0
CATEGORIES=	cad

HOMEPAGE=	http://pcb.sourceforge.net/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender c m z expat fontconfig freetype jpeg png \
		cairo glitz atk-1.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		pango-1.0 pangoft2-1.0 pangocairo-1.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcb/}

RUN_DEPENDS=	::devel/m4 \
		:tk-8.4.*:x11/tk/8.4
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	gd.>=20::graphics/gd \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

MODULES=	devel/gettext

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc --with-gui=gtk

pre-configure:
	@perl -pi -e 's,!!DOCDIR!!,${PREFIX}/share/doc/pcb,' \
		${WRKSRC}/doc/pcb.1

post-install:
	rm -rf ${PREFIX}/share/${DISTNAME}
	${INSTALL_MAN} ${WRKSRC}/doc/pcb.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/pcb.info* ${PREFIX}/info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pcb
	${INSTALL_DATA} ${WRKSRC}/doc/pcb.html ${PREFIX}/share/doc/pcb
	${INSTALL_DATA} ${WRKSRC}/doc/*.png ${PREFIX}/share/doc/pcb
	${INSTALL_DATA} ${WRKSRC}/doc/refcard.pdf ${PREFIX}/share/doc/pcb

.include <bsd.port.mk>
