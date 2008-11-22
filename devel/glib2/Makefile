# $OpenBSD: Makefile,v 1.53 2008/11/22 17:23:14 ajacoutot Exp $

COMMENT-main=		general-purpose utility library
COMMENT-docs=		glib2 documentation

VERSION=		2.18.2
DISTNAME=		glib-${VERSION}
PKGNAME-main=		glib2-${VERSION}p0
PKGNAME-docs=		glib2-docs-${VERSION}p0
CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

SHARED_LIBS+=	glib-2.0		1800.0 #.1800.2
SHARED_LIBS+=	gobject-2.0		1800.0
SHARED_LIBS+=	gmodule-2.0		1800.0
SHARED_LIBS+=	gthread-2.0		1800.0
SHARED_LIBS+=	gio-2.0			1800.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glib/2.18/}
EXTRACT_SUFX=		.tar.bz2

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext

WANTLIB-main=		c

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			pcre:pcre->=7.2:devel/pcre


PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

# disable optimization on powerpc because it can lead to a
# segfault under some circumstances
.if ${MACHINE_ARCH} == "powerpc"
PATCH_LIST=		patch-* PPC-patch-glib_Makefile_in
.endif

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--with-pcre=system \
			--disable-selinux \
			--disable-xattr
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# XXX enable by default or multi-package?
CONFIGURE_ARGS+=	--disable-fam

# don't hardcode (+fix) paths
pre-configure:
	perl -pi -e "s,/usr/local,${LOCALBASE},g;" \
		-e "s,/usr/share,${LOCALBASE}/share,g;" \
		-e "s,/etc/xdg,${SYSCONFDIR}/xdg,g" \
		${WRKSRC}/glib/gutils.c ${WRKSRC}/gio/xdgmime/xdgmime.c

.include <bsd.port.mk>
