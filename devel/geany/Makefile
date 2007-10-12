# $OpenBSD: Makefile,v 1.10 2007/10/12 09:44:21 ajacoutot Exp $

COMMENT=	small and lightweight IDE

DISTNAME=	geany-0.12
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://geany.uvena.de/

MAINTAINER=	Vlad Glagolev <stelzy@gmail.com>

# GPL + Scintilla License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=geany/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WANTLIB=	X11 Xext Xrender Xau Xcursor Xdmcp Xfixes Xi \
		Xinerama Xrandr expat stdc++ c m z glitz png \
		glib-2.0 gmodule-2.0 gobject-2.0 \
		fontconfig freetype atk-1.0 cairo \
		pango-1.0 pangoft2-1.0 pangocairo-1.0

BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-static

FLAVORS=	vte
FLAVOR?=

.if ${FLAVOR:L:Mvte}
LIB_DEPENDS+=	:vte-*:devel/vte
.else
CONFIGURE_ARGS+=--disable-vte
.endif

pre-configure:
	@perl -pi -e 's:\@GMSGFMT\@:${LOCALBASE}/bin/msgfmt:' \
		${WRKSRC}/po/Makefile.in.in

.include <bsd.port.mk>
