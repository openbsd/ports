# $OpenBSD: Makefile,v 1.143 2011/10/19 15:04:45 ajacoutot Exp $

COMMENT-main=		general-purpose utility library
COMMENT-docs=		glib2 documentation

VERSION=		2.30.1
DISTNAME=		glib-${VERSION}
EXTRACT_SUFX=		.tar.xz

PKGNAME-main=		glib2-${VERSION}
PKGNAME-docs=		glib2-docs-${VERSION}

REVISION-main=		1

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  glib-2.0             2992.0   # 2992.0
SHARED_LIBS +=  gmodule-2.0          2992.0   # 2992.0
SHARED_LIBS +=  gthread-2.0          2992.0   # 2992.0
SHARED_LIBS +=  gobject-2.0          2992.0   # 2992.0
SHARED_LIBS +=  gio-2.0              2992.0   # 2992.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glib/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext \
			lang/python

MODPY_ADJ_FILES=	glib/gtester-report \
			gio/gdbus-2.0/codegen/gdbus-codegen.in \
			gio/tests/gdbus-testserver.py

WANTLIB-main += ${WANTLIB} c pthread z pcre fam ffi

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/pcre>=8.13 \
			sysutils/gamin,no_server,no_python,bootstrap \
			devel/libffi

PKG_ARCH-docs=		*
WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

# need X11 because DBus is used in the GDBus test cases;
# also requires bumped limits (nofiles >= 512)
BUILD_DEPENDS +=	x11/dbus
REGRESS_IS_INTERACTIVE=	x11
REGRESS_FLAGS=		GTESTER="${WRKBUILD}/glib/gtester -k"
REGRESS_DEPENDS=	devel/desktop-file-utils \
			devel/py-gobject \
			x11/dbus-python

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--enable-fam \
			--with-pcre=system \
			--disable-gtk-doc \
			--disable-Bsymbolic \
			--disable-selinux \
			--disable-systemtap \
			--disable-xattr

# XXX tries to run automake-1.11 if installed
# (check again when updating to a stable release)
CONFIGURE_ARGS +=	--disable-maintainer-mode

# OpenBSD has support for monotonic clock (CLOCK_MONOTONIC), however we
# currently don't have most of the _POSIX_* defines in unistd.h (e.g.
# _POSIX_MONOTONIC_CLOCK 200112L) and the associated sysconf(3)
# _SC_MONOTONIC_CLOCK variable.
# (see also: patches/patch-gthread_gthread-posix_c)
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				-D_POSIX_MONOTONIC_CLOCK=200112L" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

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

# glib's GDB macros rely on gdb(1) auto-load feature
post-install:
	rm -rf ${PREFIX}/share/{,glib-2.0}/gdb/

.include <bsd.port.mk>
