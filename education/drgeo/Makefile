# $OpenBSD: Makefile,v 1.10 2006/06/13 13:23:31 bernd Exp $

COMMENT=	"interactive geometry program"

DISTNAME=	drgeo-1.1.0
PKGNAME=	${DISTNAME}p2
CATEGORIES=	education math

HOMEPAGE=	http://www.ofset.org/drgeo/	

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
			gtk-x11-2.0.0.0 pango-1.0.0.0 cairo glitz png \
			pangocairo-1.0.0.0 pangoft2-1.0.0.0 xml2.0.0 \
			X11 Xext Xrender c \
			fontconfig freetype m stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ofset/}

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=	glade-2.0.=0::devel/libglade2 \
		guile,guile-ltdl::lang/guile

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
