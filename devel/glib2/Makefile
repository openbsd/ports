# $OpenBSD: Makefile,v 1.159 2012/03/25 21:46:52 ajacoutot Exp $

COMMENT-main=		general-purpose utility library
COMMENT-docs=		glib2 documentation

VERSION=		2.32.0
DISTNAME=		glib-${VERSION}
EXTRACT_SUFX=		.tar.xz

PKGNAME-main=		glib2-${VERSION}
PKGNAME-docs=		glib2-docs-${VERSION}

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

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glib/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext \
			lang/python

MODPY_ADJ_FILES=	glib/gtester-report \
			gio/gdbus-2.0/codegen/gdbus-codegen.in \
			gio/tests/gdbus-testserver.py

BUILD_DEPENDS=		devel/libelf

WANTLIB-main += ${WANTLIB} c pthread z pcre ffi

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/pcre>=8.13 \
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
			--with-pcre=system \
			--disable-gtk-doc \
			--disable-Bsymbolic \
			--disable-fam \
			--disable-selinux \
			--disable-systemtap \
			--disable-xattr

# XXX tries to run automake-1.11 if installed
# (check again when updating to a stable release)
CONFIGURE_ARGS +=	--disable-maintainer-mode

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

### kqueue(1) backend ##################################################
AUTOMAKE_VERSION=	1.11
AUTOCONF_VERSION=	2.68
BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
#MASTER_SITES0=		http://dmitrymatveev.co.uk/files/
MASTER_SITES0=		http://distfiles.bsdfrog.org/
PATCH_DIST_STRIP=	-p2
PATCHFILES=		glib-gio-kqueue-2.28.8-v3.1.patch:0
AUTO_ENV=		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION}
post-patch:
	perl -pi -e 's,#include <sys/event.h>,#include <sys/types.h>\n#include <sys/event.h>,' \
		${WRKSRC}/gio/kqueue/{kqueue-helper,kqueue-thread,kqueue-utils}.c
	cd ${WRKSRC} && ${AUTO_ENV} autoreconf --force --install
### end of kqueue(1) backend ###########################################

.include <bsd.port.arch.mk>

pre-configure:
# XXX
# SIGSEGV on LP64_ARCHS at gclosure.c:290: i = closure->n_guards;
# -> reproduce by adding a meeting|appointment under evolution into the
# _local_ calendar for an already _passed_ date and running:
# /usr/local/libexec/evolution/3.2/evolution-alarm-notify
.if ${PROPERTIES:Mlp64}
	perl -pi -e 's,CFLAGS = \@CFLAGS\@,CFLAGS = \@CFLAGS\@ -O0,' \
		${WRKSRC}/gobject/Makefile.in
.endif

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
