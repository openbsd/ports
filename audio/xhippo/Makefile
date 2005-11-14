# $OpenBSD: Makefile,v 1.16 2005/11/14 21:11:42 wilfried Exp $

COMMENT=	"generic playlist manager for UNIX"

DISTNAME=	xhippo-3.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio

HOMEPAGE=	http://www.gnu.org/software/xhippo/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes
WANTLIB=	X11 fontconfig freetype \
		c m z \
		atk-1.0.0.0 cairo glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0

MASTER_SITES=	${MASTER_SITE_GNU:=xhippo/}

BUILD_DEPENDS=	::devel/pkgconfig
LIB_DEPENDS=	gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		id3tag.2::audio/libid3tag

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-gtk2
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

DOCS=	ChangeLog gnu-xhippo.html screenshot.jpeg xhippo.html.gz \
	xhippo.info.gz xhippo.ps.gz xhippo.sgml xhippo.txt.gz xhippo_toc.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xhippo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xhippo
	${INSTALL_DATA} ${WRKSRC}/xhippo.config ${PREFIX}/share/examples/xhippo/xhippo.config-sample
	${INSTALL_DATA} ${WRKSRC}/xhippo.gtkrc ${PREFIX}/share/examples/xhippo
	cd ${WRKSRC}/doc; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/xhippo 

.include <bsd.port.mk>
