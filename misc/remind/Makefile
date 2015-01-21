# $OpenBSD: Makefile,v 1.33 2015/01/21 06:23:34 bentley Exp $

COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-03.01.12
PKGNAME=	remind-3.1.12
REVISION =	1
CATEGORIES=	misc

MASTER_SITES=	http://www.roaringpenguin.com/files/download/

HOMEPAGE=	http://www.roaringpenguin.com/penguin/open_source_remind.php

PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		c m

MODULES=		x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS} \
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
