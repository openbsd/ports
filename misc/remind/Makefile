# $OpenBSD: Makefile,v 1.38 2019/07/12 21:02:23 sthen Exp $

COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-03.01.16
PKGNAME=	remind-3.1.16
CATEGORIES=	misc

MASTER_SITES=	https://dianne.skoll.ca/projects/remind/download/

HOMEPAGE=	https://dianne.skoll.ca/projects/remind/

# GPLv2
PERMIT_PACKAGE=	Yes

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
