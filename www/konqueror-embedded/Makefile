# $OpenBSD: Makefile,v 1.1.1.1 2002/03/15 22:22:38 espie Exp $

COMMENT='stand-alone web browser'
CATEGORIES=www x11
NEED_VERSION=1.511

MODULES=	qt2

DISTNAME=konqueror-embedded-snapshot_20020127
PKGNAME=konqueror-20020127
HOMEPAGE=http://www.konqueror.org/embedded.html
MASTER_SITES= http://devel-home.kde.org/~hausmann/snapshots/

MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--enable-mitshm
CONFIGURE_ARGS+=	--disable-debug
#CONFIGURE_ARGS+=	--enable-debug=full
#CONFIGURE_ARGS+=	--enable-final
#CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
PATCH_LIST=	${PORTSDIR}/x11/kde/libs2/patches/p-* patch-*


USE_GMAKE=Yes

LIB_DEPENDS=	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		pcreposix,pcre::devel/pcre \
		lcms::graphics/lcms

# you don't want to know...
CONFIGURE_ENV+=		ac_aux_files=''
MAKE_ENV=		${CONFIGURE_ENV}


MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
#MAKE_FLAGS+=AM_CXXFLAGS=-g AM_CFLAGS=-g

# ensures configure does not pick up automake

post-extract:
	ln -s /usr/bin/false ${WRKDIR}/bin/automake
	ln -s /usr/bin/false ${WRKDIR}/bin/aclocal

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

.include <bsd.port.mk>
