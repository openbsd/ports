# $OpenBSD: Makefile,v 1.4 2002/07/28 15:46:52 naddy Exp $

COMMENT='stand-alone web browser'
CATEGORIES=www x11

MODULES=	qt2

DATE=	20020311
DISTNAME=konqueror-embedded-snapshot-${DATE}
PKGNAME=konqueror-${DATE}
HOMEPAGE=http://www.konqueror.org/embedded.html
MASTER_SITES= http://devel-home.kde.org/~hausmann/snapshots/

MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include:${LOCALBASE}/include/libpng
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

KONQ=${PREFIX}/lib/konq-e
post-build:
	sed -e s,%PREFIX%,${TRUEPREFIX}, <${FILESDIR}/konq-e >${WRKDIR}/konq-e

post-install:
	${INSTALL_DATA_DIR} ${KONQ}/share/apps/khtml/css \
		${KONQ}/share/apps/kssl/caroot \
		${KONQ}/pics ${KONQ}/apps/Applications \
		${KONQ}/share/config
	@mv ${PREFIX}/bin/konqueror ${PREFIX}/libexec/konq-e
.for i in apps/Applications/konqueror.desktop pics/konqueror.png \
share/apps/khtml/css/html4.css share/apps/kssl/caroot/ca-bundle.crt \
share/config/charsets share/config/khtmlrc
	@mv ${PREFIX}/$i ${KONQ}/$i
.endfor
	${INSTALL_PROGRAM} ${WRKDIR}/konq-e ${PREFIX}/bin

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

.include <bsd.port.mk>
