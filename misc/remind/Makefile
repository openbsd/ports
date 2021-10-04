# $OpenBSD: Makefile,v 1.47 2021/10/04 14:16:31 bket Exp $

COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-03.03.08
PKGNAME=	remind-3.3.8

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
