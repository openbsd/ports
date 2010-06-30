# $OpenBSD: Makefile,v 1.9 2010/06/30 14:58:58 lum Exp $

COMMENT=	fast FTP and SFTP GUI client with a lot of features

V=		3.3.3
PKGNAME=	filezilla-$V
DISTNAME=	FileZilla_$V_src
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=filezilla/}
HOMEPAGE=	http://www.filezilla-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gcrypt gpg-error m pthread stdc++ tasn1 z
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb xcb-render xcb-render-util

MODULES=	devel/gettext
LIB_DEPENDS=	idn::devel/libidn \
		gnutls.>=13::security/gnutls \
		dbus-1::x11/dbus \
		wx_gtk2_aui,wx_base_xml,wx_gtk2_adv,wx_gtk2_xrc,wx_base_net,wx_base,wx_gtk2_core:wxWidgets-gtk2->=2.8.6:x11/wxWidgets

BUILD_DEPENDS=	::devel/cppunit \
		::devel/xdg-utils
RUN_DEPENDS=	::devel/desktop-file-utils \
		::devel/xdg-utils

SEPARATE_BUILD= concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-dbus \
		--with-tinyxml=builtin \
		--disable-autoupdatecheck
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GREP=/usr/bin/grep \
		SED=/usr/bin/sed

USE_GMAKE=	Yes
WRKDIST=	${WRKDIR}/filezilla-$V

do-regress:
	@cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} check-TESTS

.include <bsd.port.mk>
