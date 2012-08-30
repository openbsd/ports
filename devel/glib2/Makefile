# $OpenBSD: Makefile,v 1.181 2012/08/30 10:08:46 ajacoutot Exp $

COMMENT=		general-purpose utility library

DISTNAME=		glib-2.32.4
PKGNAME=		${DISTNAME:S/glib/glib2/}
EXTRACT_SUFX=		.tar.xz

REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  glib-2.0             3200.0   # 3200.0
SHARED_LIBS +=  gmodule-2.0          3200.0   # 3200.0
SHARED_LIBS +=  gthread-2.0          3200.0   # 3200.0
SHARED_LIBS +=  gobject-2.0          3200.0   # 3200.0
SHARED_LIBS +=  gio-2.0              3200.0   # 3200.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c elf ffi pcre pthread z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glib/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

MODULES=		devel/gettext \
			lang/python

MODPY_ADJ_FILES=	glib/gtester-report \
			gio/gdbus-2.0/codegen/gdbus-codegen.in \
			gio/tests/gdbus-testserver.py

LIB_DEPENDS=		devel/pcre \
			devel/libelf \
			devel/libffi

# need X11 because DBus is used in the GDBus test cases;
# also requires bumped limits (stack >= 24576)
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
			--with-pcre=system \
			--disable-gtk-doc \
			--disable-Bsymbolic \
			--disable-fam \
			--disable-selinux \
			--disable-systemtap \
			--disable-xattr

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

### kqueue(2) backend ##################################################
# https://bugzilla.gnome.org/show_bug.cgi?id=679793
AUTOMAKE_VERSION=	1.11
AUTOCONF_VERSION=	2.68
BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
#MASTER_SITES0=		http://dmitrymatveev.co.uk/files/
MASTER_SITES0=		http://distfiles.bsdfrog.org/
PATCHFILES=		glib-gio-kqueue-2.32.1-v1.patch:0
AUTO_ENV=		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION}
post-patch:
	cd ${WRKSRC} && ${AUTO_ENV} autoreconf --force --install
### end of kqueue(1) backend ###########################################

.include <bsd.port.arch.mk>

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/glib2
	${INSTALL_DATA} ${FILESDIR}/gio-kqueue.conf \
		${PREFIX}/share/examples/glib2

.include <bsd.port.mk>
