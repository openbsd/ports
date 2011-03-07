# $OpenBSD: Makefile,v 1.104 2011/03/07 19:17:14 ajacoutot Exp $

COMMENT-main=		general-purpose utility library
COMMENT-docs=		glib2 documentation

VERSION=		2.28.2
DISTNAME=		glib-${VERSION}
PKGNAME-main=		glib2-${VERSION}
PKGNAME-docs=		glib2-docs-${VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  glib-2.0             2800.0   # 2800.2
SHARED_LIBS +=  gmodule-2.0          2800.0   # 2800.2
SHARED_LIBS +=  gthread-2.0          2800.0   # 2800.2
SHARED_LIBS +=  gobject-2.0          2800.0   # 2800.2
SHARED_LIBS +=  gio-2.0              2800.0   # 2800.2

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
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				-D_POSIX_MONOTONIC_CLOCK=200112L" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

pre-configure:
	perl -pi -e "s,/usr/local,${LOCALBASE},g;" \
		-e "s,/usr/share,${LOCALBASE}/share,g;" \
		-e "s,/etc/xdg,${SYSCONFDIR}/xdg,g" \
		${WRKSRC}/glib/gutils.c ${WRKSRC}/gio/xdgmime/xdgmime.c
	perl -pi -e 's,/var/lib/dbus/machine-id,${SYSCONFDIR}/dbus-1/machine-id,g' \
		${WRKSRC}/gio/gdbusconnection.c \
		${WRKSRC}/gio/gdbusaddress.c \
		${WRKSRC}/gio/gdbusprivate.c ${WRKSRC}/po/*.po
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/gio/tests/gdbus-testserver.py

.include <bsd.port.mk>
