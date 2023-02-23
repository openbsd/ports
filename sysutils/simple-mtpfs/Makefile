COMMENT=		MTP device filesystem

V=			0.4.0
GH_ACCOUNT=		phatina
GH_PROJECT=		simple-mtpfs
GH_TAGNAME=		v${V}

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c fuse m mtp pthread usb-1.0 ${COMPILER_LIBCXX}

# c++17
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		devel/libmtp

MAKE_FILE=		makefile

BUILD_DEPENDS=		devel/autoconf-archive \
			devel/gettext,-tools

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
