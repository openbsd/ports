COMMENT-main=	ODBC 3.x driver manager
COMMENT-admin=	ODBC 3.x driver manager admin application

V=		3.52.16
DISTNAME=	libiodbc-$V
PKGNAME=	iodbc-$V

CATEGORIES=	databases

SHARED_LIBS +=	iodbcinst	3.15
SHARED_LIBS +=	iodbc		3.16
SHARED_LIBS +=	iodbcadm	3.15
SHARED_LIBS +=	drvproxy	3.15

HOMEPAGE=	https://www.iodbc.org/
SITES=		https://github.com/openlink/iODBC/releases/download/v$V/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Dual licensed: BSD or LGPLv2
PERMIT_PACKAGE=	yes

WANTLIB-main += c

WANTLIB-admin += ${COMPILER_LIBCXX}
WANTLIB-admin += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-admin += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi
WANTLIB-admin += fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-admin += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB-admin += gtk-x11-2.0 harfbuzz iconv intl iodbc iodbcinst jpeg
WANTLIB-admin += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB-admin += png xcb xcb-render xcb-shm z

PSEUDO_FLAVORS=		bootstrap no_admin

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-iodbc-inidir="${SYSCONFDIR}/iodbc" \
			--disable-libodbc

MULTI_PACKAGES=		-main -admin

LIB_DEPENDS-admin=	databases/iodbc,-main \
			x11/gtk+2

LIB_DEPENDS-main=	# empty

.include <bsd.port.arch.mk>
.if !${BUILD_PACKAGES:M-admin}
CONFIGURE_ARGS +=	--disable-gui
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iodbc/
	${SUBST_DATA} \
	    {${WRKSRC}/etc,${PREFIX}/share/examples/iodbc}/odbc.ini.sample \
	    {${WRKSRC}/etc,${PREFIX}/share/examples/iodbc}/odbcinst.ini.sample
	rm -f ${PREFIX}/man/man1/iodbctestw.1
	ln ${PREFIX}/man/man1/iodbctest.1 ${PREFIX}/man/man1/iodbctestw.1

.include <bsd.port.mk>
