COMMENT=	asynchronous dns resolver client library and utilities
DISTNAME=	adns-1.6.2

CATEGORIES=	net devel

SHARED_LIBS=	adns	2.1

HOMEPAGE=	https://www.chiark.greenend.org.uk/~ian/adns/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=	c

SITES=		https://www.chiark.greenend.org.uk/~ian/adns/ftp/

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.72

BUILD_DEPENDS=	devel/m4
USE_GMAKE=	Yes

MAKE_FLAGS=	MAJOR=${LIBadns_VERSION:R} \
		MINOR=${LIBadns_VERSION:E}
FAKE_FLAGS=	destdir_prefix=

post-extract:
	ln -s ${PREFIX}/bin/gm4 ${WRKDIR}/bin/m4

.include <bsd.port.mk>
