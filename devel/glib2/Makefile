# $OpenBSD: Makefile,v 1.37 2007/09/10 19:13:33 jasper Exp $

COMMENT-main=		general-purpose utility library
COMMENT-docs=		glib2 documentation

VERSION=		2.12.13
DISTNAME=		glib-${VERSION}
PKGNAME-main=		glib2-${VERSION}
PKGNAME-docs=		glib2-docs-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org

SHARED_LIBS +=	glib-2.0             1200.13   # .1200.13
SHARED_LIBS +=	gobject-2.0          1200.13   # .1200.13
SHARED_LIBS +=	gmodule-2.0          1200.13   # .1200.13  
SHARED_LIBS +=	gthread-2.0          1200.13   # .1200.13

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glib/2.12/}
EXTRACT_SUFX=		.tar.bz2

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext
WANTLIB-main=		c

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

# hppa's threads are broken (configure test gives Bus error)...
.if (${MACHINE_ARCH} == "hppa")
CONFIGURE_ARGS+=	--disable-threads
.endif

# disable optimization on powerpc because it can lead to a
# segfault under some circumstances
.if ${MACHINE_ARCH} == "powerpc"
PATCH_LIST=		patch-* PPC-patch-glib_Makefile_in
.endif

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Port has "/usr/local" hardcoded, we prefer ${LOCALBASE}
pre-build:
	perl -pi -e "s,/usr/local,${LOCALBASE},g" ${WRKSRC}/glib/gutils.c

.include <bsd.port.mk>
