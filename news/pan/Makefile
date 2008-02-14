# $OpenBSD: Makefile,v 1.28 2008/02/14 13:40:55 ajacoutot Exp $

COMMENT=	powerful Gtk+2 newsreader

V=		0.132
DISTNAME=	pan-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	news x11

HOMEPAGE=	http://pan.rebelbase.com/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
	 	Xi Xinerama Xrandr Xrender c expat fontconfig freetype \
	 	m pthread stdc++ z glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 pcre glitz png pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 aspell atk-1.0 cairo

MASTER_SITES=	http://pan.rebelbase.com/download/releases/${V}/source/

MODULES=	devel/gettext \
		textproc/intltool # regress target

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		gmime-2.0::mail/gmime \
		gtkspell.>=1::textproc/gtkspell
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

VMEM_WARNING=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-configure:
	cd ${WRKSRC}/po && for i in $$(ls *.po) ; do ${LOCALBASE}/bin/msgfmt -c -o $${i%%po}gmo $$i ; done

.include <bsd.port.mk>
