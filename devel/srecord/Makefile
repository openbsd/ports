BROKEN-arm=	SIGBUS in ps2pdf

COMMENT=		collection of tools for manipulating EPROM load files

DISTNAME=		srecord-1.64
REVISION =		5
CATEGORIES=		devel

SHARED_LIBS +=  srecord              0.0      # 0.0

HOMEPAGE=		https://srecord.sourceforge.net/

# GPLv3
PERMIT_PACKAGE=	Yes

SITES=			${SITE_SOURCEFORGE:=srecord/}

WANTLIB += c gcrypt gpg-error iconv intl m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		devel/boost \
			print/ghostscript/gnu \
			textproc/groff
LIB_DEPENDS=		security/libgcrypt

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"


.include <bsd.port.mk>
