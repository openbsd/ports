# $OpenBSD: Makefile,v 1.20 2004/09/15 19:38:49 espie Exp $

COMMENT=		"portable library for obtaining system information"

DISTNAME=		libgtop-1.0.13
PKGNAME=		${DISTNAME}p1
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/softwaremap/projects/libgtop/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgtop/1.0/}

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

MODULES=		devel/gettext
LIB_DEPENDS=		glib.1.2::devel/glib

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=   	gnome.36,gnomesupport::x11/gnome/libs
.else
CONFIGURE_ARGS+= 	--without-gnome
.endif

.if ${FLAVOR:L:Mguile}
BUILD_DEPENDS+= 	:guile-*:lang/guile
RUN_DEPENDS+= 		:guile-*:lang/guile
CONFIGURE_ARGS+=	--with-libgtop-guile=yes
.else
CONFIGURE_ARGS+=	--with-libgtop-guile=no
.endif

.include <bsd.port.mk>
