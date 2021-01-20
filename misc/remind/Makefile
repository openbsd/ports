# $OpenBSD: Makefile,v 1.43 2021/01/20 13:22:45 sthen Exp $

COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-03.03.04
PKGNAME=	remind-3.3.4

CATEGORIES=	misc

HOMEPAGE=	https://dianne.skoll.ca/projects/remind/

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

MASTER_SITES=	https://dianne.skoll.ca/projects/remind/download/

MODULES=		x11/tk
MODTK_VERSION =		8.6

RUN_DEPENDS=		${MODTK_RUN_DEPENDS} \
			devel/tcllib

CONFIGURE_STYLE=	gnu

TEST_TARGET=		test

pre-configure:
	${MODTCL_WISH_ADJ}  ${WRKSRC}/scripts/tkremind
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/scripts/cm2rem.tcl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/remind
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/remind

.include <bsd.port.mk>
