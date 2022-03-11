COMMENT=		configuration file parser library
V =			3.2.2
DISTNAME=		confuse-${V}
PKGNAME=		lib${DISTNAME}
SHARED_LIBS +=  confuse              2.2      # 2.0
CATEGORIES=		devel

HOMEPAGE=		https://github.com/martinh/libconfuse

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=		iconv intl

MASTER_SITES=		https://github.com/martinh/libconfuse/releases/download/v${V}/

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
