# $OpenBSD: Makefile,v 1.15 2015/08/21 19:43:04 sthen Exp $

COMMENT=	library for delta compression of streams

V=		1.0.0
DISTNAME=	librsync-$V
DISTFILES=	${DISTNAME}{v$V}.tar.gz

SHARED_LIBS +=	rsync                2.0      # 2.0

CATEGORIES=	net

HOMEPAGE=	http://librsync.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 c popt z

MASTER_SITES=	https://github.com/librsync/librsync/archive/

MODULES=	devel/gettext

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-trace
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
LIB_DEPENDS=		archivers/bzip2 \
			devel/popt

post-patch:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
