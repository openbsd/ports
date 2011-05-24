# $OpenBSD: Makefile,v 1.115 2011/05/24 09:10:23 ajacoutot Exp $

COMMENT-main=		general-purpose utility library
COMMENT-docs=		glib2 documentation

VERSION=		2.28.7
DISTNAME=		glib-${VERSION}
PKGNAME-main=		glib2-${VERSION}
PKGNAME-docs=		glib2-docs-${VERSION}

REVISION-main=		1

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  glib-2.0             2800.0   # 2800.4
SHARED_LIBS +=  gmodule-2.0          2800.0   # 2800.4
SHARED_LIBS +=  gthread-2.0          2800.0   # 2800.4
SHARED_LIBS +=  gobject-2.0          2800.0   # 2800.4
SHARED_LIBS +=  gio-2.0              2800.0   # 2800.4

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

MODPY_RUNDEP=		No
MODPY_BUILDDEP=		Yes	# glib2 wants python for the regress tests

WANTLIB-main=		${WANTLIB} c pthread z pcre fam

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/pcre>=8.12 \
			sysutils/gamin,no_server,no_python

PKG_ARCH-docs=		*
WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

# DBus is only used in the GDBus test cases
BUILD_DEPENDS +=	x11/dbus
REGRESS_DEPENDS=	devel/desktop-file-utils \
			devel/py-gobject \
			x11/dbus-python

REGRESS_FLAGS=		-k

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-fam \
			--with-pcre=system \
			--disable-gtk-doc \
			--disable-Bsymbolic \
			--disable-selinux \
			--disable-xattr \
			--disable-silent-rules

# OpenBSD has support for monotonic clock (CLOCK_MONOTONIC), however we
# we currently don't have most of the _POSIX_* defines in unistd.h (e.g.
# _POSIX_MONOTONIC_CLOCK 200112L) and the associated sysconf(3)
# _SC_MONOTONIC_CLOCK variable.
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				-D_POSIX_MONOTONIC_CLOCK=200112L" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

pre-configure:
	perl -pi -e "s,/usr/local,${LOCALBASE},g;" \
		-e "s,/usr/share,${LOCALBASE}/share,g;" \
		-e "s,/etc/xdg,${SYSCONFDIR}/xdg,g" \
		${WRKSRC}/glib/gutils.c ${WRKSRC}/gio/xdgmime/xdgmime.c \
		${WRKSRC}/gio/tests/desktop-app-info.c \
		${WRKSRC}/docs/reference/gio/html/glib-compile-schemas.html \
		${WRKSRC}/docs/reference/gio/glib-compile-schemas.1
	perl -pi -e 's,/var/lib/dbus/machine-id,${SYSCONFDIR}/dbus-1/machine-id,g' \
		${WRKSRC}/gio/gdbusconnection.c \
		${WRKSRC}/gio/gdbusaddress.c \
		${WRKSRC}/gio/gdbusprivate.c ${WRKSRC}/po/*.po
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/gio/tests/gdbus-testserver.py

.include <bsd.port.mk>
