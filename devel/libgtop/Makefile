# $OpenBSD: Makefile,v 1.12 2002/05/13 18:50:40 espie Exp $

COMMENT=		"portable library for obtaining system information"
V=			1.0.13
DISTNAME=		libgtop-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.498
HOMEPAGE=		http://www.home-of-linux.org/gnome/libgtop/
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/libgtop/}

FLAVORS= 		gnome guile
FLAVOR?=

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODULES=		gettext
LIB_DEPENDS=		glib.1.2::devel/glib

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=   	gnome.36,gnomesupport::x11/gnome/libs
.else
CONFIGURE_ARGS+= 	--without-gnome
.endif

.if ${FLAVOR:L:Mguile}
BUILD_DEPENDS+= 	::lang/guile
RUN_DEPENDS+= 		::lang/guile
CONFIGURE_ARGS+=	--with-libgtop-guile=yes
.else
CONFIGURE_ARGS+=	--with-libgtop-guile=no
.endif

.include <bsd.port.mk>

.if ${FLAVOR:L:Mguile} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-guile%%/r${PKGDIR}/PFRAG.shared.guile' -e '//d'
.elif ${FLAVOR:L:Mguile}
SED_PLIST+=-e '/%%SHARED-guile%%/d'
.endif

.if !${FLAVOR:L:Mgnome} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-no-gnome%%/r${PKGDIR}/PFRAG.shared.no-gnome' -e '//d'
.elif !${FLAVOR:L:Mgnome}
SED_PLIST+=-e '/%%SHARED-no-gnome%%/d'
.endif
