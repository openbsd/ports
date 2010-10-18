# $OpenBSD: Makefile,v 1.21 2010/10/18 17:06:07 espie Exp $

COMMENT-main=		ODBC 3.x driver manager
COMMENT-admin=		ODBC 3.x driver manager admin application

V=			3.52.6
REVISION-main=		0
REVISION-admin=		1

DISTNAME=		libiodbc-$V
PKGNAME=		iodbc-$V
PKGNAME-main=		iodbc-$V
PKGNAME-admin=		iodbc-admin-$V

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
USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-iodbc-inidir="${SYSCONFDIR}/iodbc" \
			--disable-libodbc

MULTI_PACKAGES=		-main -admin

WANTLIB=		c pthread

LIB_DEPENDS-admin=	${MODGETTEXT_LIB_DEPENDS} \
			::databases/iodbc,-main \
			::devel/atk \
			::devel/glib2 \
			::devel/pango \
			::devel/pcre \
			::graphics/cairo \
			::graphics/glitz \
			::graphics/png \
			::x11/gtk+2

LIB_DEPENDS-main=	# this space intentionally left blank

WANTLIB-admin= ${WANTLIB} \
        X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
        Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
        freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
        gmodule-2.0 gobject-2.0 gtk-x11-2.0 iodbc iodbcinst m \
        pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
        pthread-stubs xcb xcb-render xcb-render-util z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iodbc
	${INSTALL_DATA} ${WRKSRC}/etc/*.ini.sample \
		${PREFIX}/share/examples/iodbc

.include <bsd.port.mk>
