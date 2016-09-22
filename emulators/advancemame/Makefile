# $OpenBSD: Makefile,v 1.2 2016/09/22 12:57:18 fcambus Exp $

COMMENT =	MAME port with advanced video support for monitors and TVs

DISTNAME =	advancemame-1.4
REVISION =	0

CATEGORIES =	emulators games

HOMEPAGE =	http://www.advancemame.it/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+ and MAME License
PERMIT_PACKAGE_CDROM =	unclear license
PERMIT_PACKAGE_FTP =	unclear license
PERMIT_DISTFILES_FTP =	unclear license

WANTLIB +=	SDL c expat freetype m pthread z

MASTER_SITES =	https://github.com/amadvance/advancemame/releases/download/${DISTNAME}/

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE = gnu

USE_GMAKE =	Yes

post-patch:
	@sed -i 's,@@,@,' ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/obj/mame/generic/blend/advmame ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doc/advmame.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/advancemame
	${INSTALL_DATA} ${WRKSRC}/doc/advmame.txt ${PREFIX}/share/doc/advancemame

.include <bsd.port.mk>
