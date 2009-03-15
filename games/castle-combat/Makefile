# $OpenBSD: Makefile,v 1.16 2009/03/15 14:39:02 espie Exp $

COMMENT=	Rampart arcade game clone for X11

DISTNAME=	castle-combat-0.8.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games x11

HOMEPAGE=	http://www.linux-games.com/castle-combat/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=castle-combat/}

MODULES=	lang/python

RUN_DEPENDS=	::devel/pygame \
		::devel/py-twisted/core \
		:py-Numeric-*:math/py-Numeric

NO_BUILD=	Yes
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,!!MODPY_BIN!!,${MODPY_BIN},g' \
		${WRKSRC}/castle-combat.py
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/castle-combat.py \
		${WRKSRC}/src/common.py \
		${WRKSRC}/src/menu.py

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/castle-combat/{gfx,sound,src}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/castle-combat
	${INSTALL_SCRIPT} ${WRKSRC}/castle-combat.py \
		${PREFIX}/bin/castle-combat
	${INSTALL_DATA} ${WRKSRC}/data/colourba.ttf \
		${PREFIX}/share/castle-combat
	${INSTALL_DATA} ${WRKSRC}/src/*.py \
		${PREFIX}/share/castle-combat/src
	${INSTALL_DATA} ${WRKSRC}/data/gfx/* \
		${PREFIX}/share/castle-combat/gfx
	${INSTALL_DATA} ${WRKSRC}/data/sound/* \
		${PREFIX}/share/castle-combat/sound
	${INSTALL_DATA} ${WRKSRC}/data/doc/rules.html \
		${WRKSRC}/data/font_read_me.html \
		${PREFIX}/share/doc/castle-combat

.include <bsd.port.mk>
