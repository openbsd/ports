COMMENT=		device color profile management daemon

GH_ACCOUNT=		hughsie
GH_PROJECT=		colord
GH_TAGNAME=		1.4.6

SITES.p=		https://github.com/hughsie/colord/commit/
PATCHFILES.p=		fa832689e2574436b0e4cd3db5f99df6aa55882b.diff \
			41bf6b99a11ccf4235aa946a3bc9fc37ea4ee4d9.diff \
			c357ea2e1f65b5127a33960e89163245355a4d7c.diff \
			124efd03f3cb9b1df819134eb7cb6683497be9b1.diff \
			7ec44427a82bf1779098dcb1ae979a070d6eefa6.diff \
			1452a975ecae14299fb27d41522dfd32305481ce.diff \
			f7e487584d1a22ffcfd910e9ae47429599c39b44.diff \
			be3aa625c10e9f1053c520d2cf849332cb535bd4.diff \
			91a3cc2e994be587def3b70762f15461101d43a1.diff \
			4a33e7c0b46f0c8d940bd2bafbe60b114428413e.diff
PATCH_DIST_STRIP=	-p1

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

post-install:
	rm -rf ${WRKINST}/var/lib

.include <bsd.port.mk>
