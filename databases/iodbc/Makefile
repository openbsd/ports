# $OpenBSD: Makefile,v 1.18 2009/08/10 06:31:07 kili Exp $

COMMENT-main=		ODBC 3.x driver manager
COMMENT-admin=		ODBC 3.x driver manager admin application

V=			3.52.6

DISTNAME=		libiodbc-$V
PKGNAME=		iodbc-$V
PKGNAME-main=		iodbc-$V
PKGNAME-admin=		iodbc-admin-$Vp0

CATEGORIES=		databases

SHARED_LIBS +=		iodbcinst	3.15
SHARED_LIBS +=		iodbc		3.15
SHARED_LIBS +=		iodbcadm	3.15
SHARED_LIBS +=		drvproxy	3.15

HOMEPAGE=		http://www.iodbc.org/

MAINTAINER=		Andrew Dalgleish <openbsd@ajd.net.au>

# Dual licensed: BSD or LGPLv2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=		${HOMEPAGE}downloads/iODBC/

MODULES=		devel/gettext

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-iodbc-inidir="${SYSCONFDIR}/iodbc" \
			--disable-libodbc

MULTI_PACKAGES=		-main -admin

WANTLIB=		c pthread

LIB_DEPENDS-admin=	${MODGETTEXT_LIB_DEPENDS} \
			iodbc,iodbcinst::databases/iodbc,-main \
			atk-1.0::devel/atk \
			glib-2.0,gmodule-2.0,gobject-2.0,gio-2.0::devel/glib2 \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
			pcre::devel/pcre \
			cairo::graphics/cairo \
			glitz::graphics/glitz \
			png::graphics/png \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

LIB_DEPENDS-main=	# this space intentionally left blank

WANTLIB-admin= ${WANTLIB} \
		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender expat fontconfig freetype \
		m pixman-1 pthread-stubs xcb z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iodbc
	${INSTALL_DATA} ${WRKSRC}/etc/*.ini.sample \
		${PREFIX}/share/examples/iodbc

.include <bsd.port.mk>
