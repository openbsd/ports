COMMENT=		device color profile management daemon

GH_ACCOUNT=		hughsie
GH_PROJECT=		colord
GH_TAGNAME=		1.4.7
REVISION=		1

SHARED_LIBS += colordprivate             2.0 # 2.0.5
SHARED_LIBS += colord                    2.0 # 2.0.5
SHARED_LIBS += colorhug                  0.0 # 2.0.5

CATEGORIES=		graphics print

HOMEPAGE=		http://www.freedesktop.org/software/colord/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gusb intl
WANTLIB += lcms2 m polkit-gobject-1 sqlite3

MODULES=		devel/dconf \
			devel/meson

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/gobject-introspection \
			lang/vala \
			shells/bash-completion \
			textproc/gtk-doc

LIB_DEPENDS=		databases/sqlite3 \
			devel/libgusb \
			graphics/lcms2 \
			sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

# pnp.ids
BUILD_DEPENDS +=	misc/hwdata
RUN_DEPENDS +=		misc/hwdata

CONFIGURE_ARGS=		-Dudev_rules=false \
			-Dsystemd=false \
			-Dvapi=true \
			-Ddaemon_user=_colord \
			-Dpnp_ids=${LOCALBASE}/share/hwdata/pnp.ids

# XXX needs docbook-xsl-ns
CONFIGURE_ARGS +=	-Dman=false

# until provden useful (would need to bring graphics/argyll back from the Attic)
CONFIGURE_ARGS +=	-Dargyllcms_sensor=false

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/colord/cd-icc-store.c \
		${WRKSRC}/src/cd-main.c

post-build:
# XXX
# ERROR: ['/usr/local/bin/gtkdoc-mkhtml', '--path=/usr/ports/pobj/colord-1.4.7/colord-1.4.7/doc/api:/usr/ports/pobj/colord-1.4.7/build-amd64/doc/api', 'colord', '../colord-docs.xml'] failed with status 6
# warning: failed to load external entity "../../../COPYING"
	cp ${WRKSRC}/COPYING ${WRKBUILD}/

post-install:
	rm -rf ${WRKINST}/var/lib

.include <bsd.port.mk>
