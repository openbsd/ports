# $OpenBSD: Makefile,v 1.24 2006/01/04 22:09:55 naddy Exp $

COMMENT=		"portable library for obtaining system information"

DISTNAME=		libgtop-1.0.13
PKGNAME=		${DISTNAME}p3
SHARED_LIBS=		gtop			1.12 \
			gtop_common		1.12 \
			gtop_guile		1.12 \
			gtop_guile_names	1.12 \
			gtop_names		1.12 \
			gtop_suid_common	1.12 \
			gtop_sysdeps		1.12 \
			gtop_sysdeps_suid	1.12 \
			gnomesupport		0.0
MODGNU_SHARED_LIBS=	gtop			'' \
			gtop_common		'' \
			gtop_guile		'' \
			gtop_guile_names	'' \
			gtop_names		'' \
			gtop_suid_common	'' \
			gtop_sysdeps		'' \
			gtop_sysdeps_suid	'' \
			gnomesupport		''

CATEGORIES=		devel

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgtop/1.0/}

FLAVORS= 		gnome guile
FLAVOR?=

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c kvm

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODULES=		devel/gettext
LIB_DEPENDS=		glib.1.2::devel/glib
USE_LIBTOOL=		Yes

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=   	gnomesupport::x11/gnome/libs
WANTLIB+=		m z
.else
CONFIGURE_ARGS+= 	--without-gnome
.endif

.if ${FLAVOR:L:Mguile}
BUILD_DEPENDS+= 	:guile-*:lang/guile
RUN_DEPENDS+= 		:guile-*:lang/guile
CONFIGURE_ARGS+=	--with-libgtop-guile=yes
WANTLIB+=		m
.else
CONFIGURE_ARGS+=	--with-libgtop-guile=no
.endif

.include <bsd.port.mk>
