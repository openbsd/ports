COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-04.03.03
PKGNAME=	remind-4.3.3

CATEGORIES=	misc

HOMEPAGE=	https://dianne.skoll.ca/projects/remind/

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv2 only
PERMIT_PACKAGE=	Yes

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB=		c m

SITES=			https://dianne.skoll.ca/projects/remind/download/

TEST_ENV=		LC_ALL=en_US.UTF-8

MODULES=		x11/tk
MODTK_VERSION=		8.6

BUILD_DEPENDS=		converters/p5-JSON-MaybeXS \
			graphics/p5-Cairo \
			devel/p5-Pango
RUN_DEPENDS=		${MODTK_RUN_DEPENDS} \
			devel/tcllib \
			converters/p5-JSON-MaybeXS \
			graphics/p5-Cairo \
			devel/p5-Pango \
			devel/desktop-file-utils

CONFIGURE_STYLE=	gnu

TEST_TARGET=		test

pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/scripts/tkremind

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/remind
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/remind

.include <bsd.port.mk>
