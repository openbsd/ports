# $OpenBSD: Makefile,v 1.200 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT=		general-purpose utility library

V=			2.34.3
DISTNAME=		glib-${V}
PKGNAME=		${DISTNAME:S/glib/glib2/}
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  glib-2.0             3400.0   # 3400.3
SHARED_LIBS +=  gmodule-2.0          3400.0   # 3400.3
SHARED_LIBS +=  gthread-2.0          3400.0   # 3400.3
SHARED_LIBS +=  gobject-2.0          3400.0   # 3400.3
SHARED_LIBS +=  gio-2.0              3400.0   # 3400.3

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c elf ffi pcre pthread z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glib/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

MODULES=		devel/gettext \
			lang/python

MODPY_ADJ_FILES=	glib/gtester-report \
			gio/gdbus-2.0/codegen/gdbus-codegen.in \
			gio/tests/gdbus-testserver.py

# man pages
BUILD_DEPENDS +=	textproc/docbook>=4.5p1 \
			textproc/libxslt

LIB_DEPENDS=		devel/pcre \
			devel/libelf \
			devel/libffi

# need X11 because DBus is used in the GDBus test cases;
# also requires bumped limits (stack >= 24576)
BUILD_DEPENDS +=	x11/dbus
TEST_IS_INTERACTIVE=	x11
TEST_DEPENDS=	devel/desktop-file-utils \
			devel/py-gobject \
			devel/py-gobject3 \
			x11/dbus-python

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--with-pcre=system \
			--disable-gtk-doc \
			--disable-fam \
			--disable-selinux \
			--disable-systemtap \
			--disable-xattr

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

### kqueue(2) backend ##################################################
# https://bugzilla.gnome.org/show_bug.cgi?id=679793
AUTOMAKE_VERSION=	1.11
AUTOCONF_VERSION=	2.68
BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
MASTER_SITES0=		http://distfiles.bsdfrog.org/
PATCHFILES=		glib-gio-kqueue-2.34.2-v2.patch:0
PATCH_DIST_STRIP=	-p1
AUTO_ENV=		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION}
post-patch:
	cd ${WRKSRC} && ${AUTO_ENV} autoreconf --force --install
### end of kqueue(1) backend ###########################################

pre-configure:
	perl -pi -e "s,/usr/local,${LOCALBASE},g;" \
		-e "s,/usr/share/locale,${LOCALBASE}/share/locale,g;" \
		-e "s,/usr/share/applications,${LOCALBASE}/share/applications,g;" \
		-e "s,/etc/xdg,${SYSCONFDIR}/xdg,g" \
		${WRKSRC}/glib/gutils.c ${WRKSRC}/gio/xdgmime/xdgmime.c \
		${WRKSRC}/gio/tests/desktop-app-info.c \
		${WRKSRC}/docs/reference/gio/html/glib-compile-schemas.html \
		${WRKSRC}/docs/reference/gio/glib-compile-schemas.1
	perl -pi -e "s,/var/lib/dbus,/var/db/dbus,g" \
		${WRKSRC}/gio/gdbusconnection.c \
		${WRKSRC}/gio/gdbusprivate.c \
		${WRKSRC}/po/*.po

.include <bsd.port.mk>
