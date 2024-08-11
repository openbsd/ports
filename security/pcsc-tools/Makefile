COMMENT=	tools for use with PC/SC drivers, cards, readers

DISTNAME=	pcsc-tools-1.7.2
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security sysutils

HOMEPAGE=	https://pcsc-tools.apdu.fr/

# GPLv2+
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c pcsclite pthread

SITES=		https://pcsc-tools.apdu.fr/

CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes
BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/p5-libintl \
		security/p5-Chipcard-PCSC \
		x11/p5-Gtk3
LIB_DEPENDS=	security/pcsc-lite

NO_TEST=	Yes

CFLAGS+=	-I${LOCALBASE}/include/PCSC

.include <bsd.port.mk>
