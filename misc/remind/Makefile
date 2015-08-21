# $OpenBSD: Makefile,v 1.36 2015/08/21 14:11:14 jasper Exp $

COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-03.01.15
PKGNAME=	remind-3.1.15
CATEGORIES=	misc

MASTER_SITES=	http://www.roaringpenguin.com/files/download/

HOMEPAGE=	http://www.roaringpenguin.com/penguin/open_source_remind.php

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		c m

MODULES=		x11/tk
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
