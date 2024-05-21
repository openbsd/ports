COMMENT=	minimal XML library

# 3.x changes license to Apache + exception for linking from GPLv2-only code
# 3.x and 4.x both have API changes breaking existing ports
# 4.x requires C99 (n.b. base-gcc archs)
V=		2.12
DISTNAME=	mxml-$V
CATEGORIES=	textproc

SHARED_LIBS=	mxml	0.3	# 1.6

HOMEPAGE=	https://www.msweet.org/mxml/

# LGPLv2 with exceptions
PERMIT_PACKAGE=	Yes

WANTLIB=	c

SITES=		https://github.com/michaelrsweet/mxml/releases/download/v$V/

CONFIGURE_STYLE= autoconf dest no-autoheader

AUTOCONF_VERSION= 2.69
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}
CONFIGURE_ENV=	LIBmxml_VERSION=${LIBmxml_VERSION}
MAKE_ENV=	LIBmxml_VERSION=${LIBmxml_VERSION}

CONFIGURE_ARGS=	--disable-threads

TEST_TARGET=	testmxml

.include <bsd.port.mk>
