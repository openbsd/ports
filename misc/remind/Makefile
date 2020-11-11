# $OpenBSD: Makefile,v 1.41 2020/11/11 05:23:29 gnezdo Exp $

COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-03.03.03
PKGNAME=	remind-3.3.3

CATEGORIES=	misc

HOMEPAGE=	https://dianne.skoll.ca/projects/remind/

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv2
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
