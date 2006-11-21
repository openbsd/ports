# $OpenBSD: Makefile,v 1.1.1.1 2006/11/21 18:39:28 ajacoutot Exp $

COMMENT=	"parametrical modeling of three-dimensional humanoid characters"

DISTNAME=	makehuman-0.9
CATEGORIES=	graphics

HOMEPAGE=	http://www.dedalo-3d.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 / MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

WANTLIB=	GL GLU ICE SM X11 Xi Xmu c m pthread stdc++ z

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=	::graphics/aqsis
LIB_DEPENDS=	animorph::graphics/animorph \
		glut.>=3::graphics/glut \
		mhgui::graphics/mhgui \
		png.>=5::graphics/png

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lpthread"

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,packagedocdir=doc,packagedocdir=share/doc,g' \
		${WRKSRC}/configure
	perl -pi -e 's,doc/makehuman,share/doc/makehuman,g' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
