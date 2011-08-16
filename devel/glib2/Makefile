# $OpenBSD: Makefile,v 1.128 2011/08/16 15:03:46 ajacoutot Exp $

COMMENT-main=		general-purpose utility library
COMMENT-docs=		glib2 documentation

VERSION=		2.28.8
DISTNAME=		glib-${VERSION}
PKGNAME-main=		glib2-${VERSION}
PKGNAME-docs=		glib2-docs-${VERSION}

REVISION-main=		2

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  glib-2.0             2800.0   # 2800.7
SHARED_LIBS +=  gmodule-2.0          2800.0   # 2800.7
SHARED_LIBS +=  gthread-2.0          2800.0   # 2800.7
SHARED_LIBS +=  gobject-2.0          2800.0   # 2800.7
SHARED_LIBS +=  gio-2.0              2800.0   # 2800.7

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glib/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.bz2

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext \
			lang/python

# Although gtester-report(1) is a python script we do not want to force
# a dependency on python.
MODPY_RUNDEP=		No
# Python is needed for the regress tests.
MODPY_BUILDDEP=		Yes
MODPY_ADJ_FILES=	glib/gtester-report \
			gio/tests/gdbus-testserver.py

WANTLIB-main=		${WANTLIB} c pthread z pcre fam

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/pcre>=8.12 \
			sysutils/gamin,no_server,no_python

PKG_ARCH-docs=		*
WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

# need X11 because DBus is used in the GDBus test cases
BUILD_DEPENDS +=	x11/dbus
REGRESS_IS_INTERACTIVE=	x11
REGRESS_FLAGS=		GTESTER="${WRKBUILD}/glib/gtester -k"
REGRESS_DEPENDS=	devel/desktop-file-utils \
			devel/py-gobject \
			x11/dbus-python

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--enable-fam \
			--with-pcre=system \
			--disable-gtk-doc \
			--disable-Bsymbolic \
			--disable-selinux \
			--disable-xattr

# OpenBSD has support for monotonic clock (CLOCK_MONOTONIC), however we
# currently don't have most of the _POSIX_* defines in unistd.h (e.g.
# _POSIX_MONOTONIC_CLOCK 200112L) and the associated sysconf(3)
# _SC_MONOTONIC_CLOCK variable.
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
