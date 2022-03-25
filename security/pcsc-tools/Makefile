COMMENT=	tools for use with PC/SC drivers, cards, readers

DISTNAME=	pcsc-tools-1.6.0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security sysutils

HOMEPAGE=	http://ludovic.rousseau.free.fr/softwares/pcsc-tools/

# GPLv2+
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c pcsclite pthread

MASTER_SITES=	http://ludovic.rousseau.free.fr/softwares/pcsc-tools/

CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes

# gscriptor requires p5-Gtk3, intentionally not listed as a hard dep
RUN_DEPENDS=	security/p5-Chipcard-PCSC
LIB_DEPENDS=	security/pcsc-lite

NO_TEST=	Yes

CFLAGS+=	-I${LOCALBASE}/include/PCSC

.include <bsd.port.mk>
