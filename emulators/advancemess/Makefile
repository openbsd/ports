# $OpenBSD: Makefile,v 1.9 2017/08/11 10:37:10 sthen Exp $

COMMENT =	MESS port with advanced video support for monitors and TVs

V =		3.5
DISTNAME =	advancemame-$V
PKGNAME =	advancemess-$V

CATEGORIES =	emulators games

HOMEPAGE =	http://www.advancemame.it/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+ and MAME License
PERMIT_PACKAGE_CDROM =	unclear license
PERMIT_PACKAGE_FTP =	unclear license
PERMIT_DISTFILES_FTP =	unclear license

WANTLIB +=	SDL2 c expat freetype m pthread z

MASTER_SITES =	https://github.com/amadvance/advancemame/releases/download/v$V/

LIB_DEPENDS =	devel/sdl2

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS += devel/nasm
CFLAGS +=	 -fno-pie -fomit-frame-pointer
.endif

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS += --with-emu=mess

USE_GMAKE =	Yes

post-patch:
	@sed -i 's,@@,@,' ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/obj/mess/generic/blend/advmess ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doc/advmame.1 ${PREFIX}/man/man1/advmess.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/advancemess
	${INSTALL_DATA} ${WRKSRC}/doc/advmame.txt \
		${PREFIX}/share/doc/advancemess/advmess.txt

.include <bsd.port.mk>
