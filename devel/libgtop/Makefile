# $OpenBSD: Makefile,v 1.2 2001/09/14 13:44:46 todd Exp $

COMMENT=		"portable library for obtaining system information"
V=			1.0.12
DISTNAME=		libgtop-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.384
HOMEPAGE=		http://www.home-of-linux.org/gnome/libgtop/
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/libgtop

LIB_DEPENDS=

FLAVORS= 		gnome guile
FLAVOR?=

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -DUVM" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=   	gnome.36::x11/gnome/libs
.else
CONFIGURE_ARGS+= 	--without-gnome
.endif

.if ${FLAVOR:L:Mguile}
BUILD_DEPENDS+= 	guile::lang/guile
RUN_DEPENDS+= 		guile::lang/guile
CONFIGURE_ARGS+=	--with-libgtop-guile=yes
.else
CONFIGURE_ARGS+=	--with-libgtop-guile=no
.endif

pre-fetch:
        @echo \
        echo "  WARNING: This application requires a kernel compiled" \
        echo "  with 'option UVM' for proper operation.  The GENERIC" \
        echo "  kernel contains this option." \
        echo

.include <bsd.port.mk>
