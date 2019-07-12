# $OpenBSD: Makefile,v 1.20 2019/07/12 21:02:20 sthen Exp $

V = 0.9.4
COMMENT-client = race for the galaxy card game
COMMENT-server = race for the galaxy card game, game server
PKGNAME-client = rftg-$V
PKGNAME-server = rftg-server-$V
CATEGORIES = games
HOMEPAGE = http://keldon.net/rftg/
DISTNAME = rftg-$V
EXTRACT_SUFX = .tar.bz2
MASTER_SITES = ${HOMEPAGE}
MULTI_PACKAGES = -client #-server
SUBPACKAGE ?= -client

REVISION-client = 1
#REVISION-server =

# Licence: GPL
# official authorization from the game publisher (Rio Grande)
PERMIT_PACKAGE = Yes

CONFIGURE_STYLE = gnu

LIB_DEPENDS-client = x11/gtk+2

LIB_DEPENDS-server = databases/mariadb

.if ${MULTI_PACKAGES:M-server}

CONFIGURE_ARGS += --enable-server
CONFIGURE_ENV += LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
MAKE_FLAGS = server_LDADD='-lmysqlclient -pthread'

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/server ${PREFIX}/bin/rftg-server
.endif

cWANTLIB = c m pthread

WANTLIB-client = ${cWANTLIB} X11 Xcomposite Xcursor Xdamage Xext \
	Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo fontconfig \
	freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
	gobject-2.0 gtk-x11-2.0 intl pango-1.0 \
	pangocairo-1.0 pangoft2-1.0 \
	z

WANTLIB-server = ${cWANTLIB} c m pthread mysqlclient


.include <bsd.port.mk>
