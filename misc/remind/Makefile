# $OpenBSD: Makefile,v 1.48 2021/10/15 10:50:31 sthen Exp $

COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-03.03.09
PKGNAME=	remind-3.3.9

CATEGORIES=	misc

HOMEPAGE=	https://dianne.skoll.ca/projects/remind/

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

MASTER_SITES=	https://dianne.skoll.ca/projects/remind/download/

TEST_ENV=		LC_ALL=en_US.UTF-8

MODULES=		x11/tk
MODTK_VERSION =		8.6

BUILD_DEPENDS=		converters/p5-JSON-Any
RUN_DEPENDS=		${MODTK_RUN_DEPENDS} \
			devel/tcllib \
			converters/p5-JSON-Any

CONFIGURE_STYLE=	gnu

TEST_TARGET=		test

pre-configure:
	${MODTCL_WISH_ADJ}  ${WRKSRC}/scripts/tkremind

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/remind
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/remind

.include <bsd.port.mk>
