# $OpenBSD: Makefile,v 1.68 2009/11/23 08:22:34 ajacoutot Exp $

COMMENT-main=		general-purpose utility library
COMMENT-docs=		glib2 documentation
COMMENT-fam=		fam(3) gio module

VERSION=		2.22.2
DISTNAME=		glib-${VERSION}
PKGNAME-main=		glib2-${VERSION}p1
PKGNAME-docs=		glib2-docs-${VERSION}
PKGNAME-fam=		glib2-fam-${VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

# glib-2.0 and gobject-2.0 need to be in sync as glib-2.0 version is
# used to install *-gdb.py files
SHARED_LIBS+=	glib-2.0		1802.0 # .2200.2
SHARED_LIBS+=	gobject-2.0		1802.0 # .2200.2
SHARED_LIBS+=	gmodule-2.0		1802.0 # .2200.2
SHARED_LIBS+=	gthread-2.0		1802.0 # .2200.2
SHARED_LIBS+=	gio-2.0			1802.0 # .2200.2

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glib/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.bz2

MULTI_PACKAGES=		-main -docs -fam

MODULES=		devel/gettext

WANTLIB-main=		c

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			pcre:pcre->=7.2:devel/pcre

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

LIB_DEPENDS-fam=	${LIB_DEPENDS-main} \
			gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0::${BASE_PKGPATH},-main \
			fam::sysutils/fam
WANTLIB-fam=		m rpcsvc stdc++

# disable optimization on powerpc because it can lead to a
# segfault under some circumstances
.if ${MACHINE_ARCH} == "powerpc"
PATCH_LIST=		patch-* PPC-patch-glib_Makefile_in
.endif

REGRESS_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-fam \
			--with-pcre=system \
			--disable-selinux \
			--disable-xattr \
			--disable-silent-rules
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# don't hardcode (+fix) paths
pre-configure:
	perl -pi -e "s,/usr/local,${LOCALBASE},g;" \
		-e "s,/usr/share,${LOCALBASE}/share,g;" \
		-e "s,/etc/xdg,${SYSCONFDIR}/xdg,g" \
		${WRKSRC}/glib/gutils.c ${WRKSRC}/gio/xdgmime/xdgmime.c
	perl -pi -e 's,!!LIBglib-2.0_VERSION_R!!,${LIBglib-2.0_VERSION:R},g;' \
		-e 's,!!LIBglib-2.0_VERSION_E!!,${LIBglib-2.0_VERSION:E},g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
