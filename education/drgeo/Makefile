# $OpenBSD: Makefile,v 1.8 2005/11/15 08:45:01 wilfried Exp $

COMMENT=	"interactive geometry program"

DISTNAME=	drgeo-1.1.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	education math

HOMEPAGE=	http://www.ofset.org/drgeo/	

MAINTAINER=	Steven Mestdagh <steven.mestdagh@esat.kuleuven.be>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		atk-1.0.0.0 cairo gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
			glib-2.0.0.0 glitz gmodule-2.0.0.0 gobject-2.0.0.0 \
			gtk-x11-2.0.0.0 pango-1.0.0.0 pangocairo-1.0.0.0 \
			pangoft2-1.0.0.0 png xml2.0.0 X11 Xext Xrender c \
			fontconfig freetype m stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ofset/}

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=	glade-2.0.=0::devel/libglade2 \
		guile::lang/guile

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
