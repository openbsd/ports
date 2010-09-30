# $OpenBSD: Makefile,v 1.93 2010/09/30 07:17:19 ajacoutot Exp $

COMMENT-main=		general-purpose utility library
COMMENT-docs=		glib2 documentation

VERSION=		2.26.0
DISTNAME=		glib-${VERSION}
PKGNAME-main=		glib2-${VERSION}
PKGNAME-docs=		glib2-docs-${VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  glib-2.0             2600.0   # 2600.0
SHARED_LIBS +=  gmodule-2.0          2600.0   # 2600.0
SHARED_LIBS +=  gthread-2.0          2600.0   # 2600.0
SHARED_LIBS +=  gobject-2.0          2600.0   # 2600.0
SHARED_LIBS +=  gio-2.0              2600.0   # 2600.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glib/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.bz2

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext

WANTLIB-main=		c pthread z pcre fam

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			:pcre->=7.2:devel/pcre \
			::sysutils/gamin,no_server,no_python

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

# DBus is only used in the GDBus test cases
REGRESS_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
			::x11/dbus

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
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

.include <bsd.port.mk>
