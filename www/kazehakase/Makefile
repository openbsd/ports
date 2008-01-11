# $OpenBSD: Makefile,v 1.1.1.1 2008/01/11 14:47:28 landry Exp $

COMMENT=	lightweight gecko-based web browser
CATEGORIES=	www

SHARED_LIBS=	kazehakase 0.0 #.1.0

DISTNAME=	kazehakase-0.5.1
MASTER_SITES=	http://osdn.dl.sourceforge.jp/kazehakase/28710/
#doesn't work
#MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=kazehakase/}

HOMEPAGE=	http://kazehakase.sourceforge.jp/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gecko-engine=xulrunner \
		--disable-hyper-estraier \
		--without-ruby \
		--without-rgettext

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib/xulrunner"
USE_LIBTOOL=	Yes

FAKE_FLAGS=	sysconfdir=${TRUEPREFIX}/share/examples

BUILD_DEPENDS=	:xulrunner-devel->=1.8:devel/xulrunner,-devel

RUN_DEPENDS=	::devel/desktop-file-utils

LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2 \
		xulrunner/xpcom:xulrunner->=1.8:devel/xulrunner \
		gnutls.>=13::security/gnutls

WANTLIB=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender Xcomposite Xdamage c expat fontconfig \
		freetype m pthread gpg-error gcrypt z png cairo \
		atk-1.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread \
		glitz nspr4 plc4 plds4 pcre

.include <bsd.port.mk>
