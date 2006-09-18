# $OpenBSD: Makefile,v 1.4 2006/09/18 12:19:39 espie Exp $

COMMENT=	"window manipulation tool"

DISTNAME=	devilspie-0.17.1
CATEGORIES=	x11

HOMEPAGE=	http://www.burtonini.com/blog/computers/devilspie

MAINTAINER=	Olle Nilsson <olle@vexed.se>

# GNU
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 cairo atk-1.0 c fontconfig freetype \
		gdk_pixbuf-2.0 gdk-x11-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m \
		pango-1.0 pangoft2-1.0 pangocairo-1.0

MASTER_SITES=	http://www.burtonini.com/computing/

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:intltool-*:textproc/intltool \
		:p5-XML-Parser-*:textproc/p5-XML-Parser

LIB_DEPENDS=	wnck-1.>=16::devel/libwnck

SEPARATE_BUILD=	concurrent
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/" \
		LDFLAGS="-L${LOCALBASE}/lib" 

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/devilspie
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/devilspie

.include <bsd.port.mk>
