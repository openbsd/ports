# $OpenBSD: Makefile,v 1.19 2019/07/17 14:49:21 danj Exp $

BROKEN-amd64 =		perl -e 'use SDL' segfaults
BROKEN-i386 =		dependent ports (frozen-bubble, vacuum) fail: loadable library and perl binaries are mismatched (got handshake key 0x2b, needed 0xXXXXXX)

COMMENT =		Simple DirectMedia Layer for Perl
HOMEPAGE =		http://sdlperl.org/

MODULES =		cpan
VER =			2.1.3
DISTNAME =		SDL_Perl-${VER}
PKGNAME =		p5-SDL-${VER}
REVISION =		7
CATEGORIES =		devel graphics
CPAN_AUTHOR =		DGOEHRIG

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB +=		GL GLU SDL jpeg perl png pthread

RUN_DEPENDS =		devel/p5-YAML
BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		devel/sdl-gfx \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-net \
			devel/sdl-ttf \
			devel/smpeg
WANTLIB +=		SDL_gfx SDL_image SDL_mixer SDL_net SDL_ttf smpeg

CONFIGURE_STYLE =	perl modbuild

# Set AUDIODEVICE to aucat socket if it is in use
TEST_IS_INTERACTIVE =Yes
TEST_FLAGS =		AUDIODEVICE="${AUDIODEVICE}"

EXAMPLE_DIR =		${PREFIX}/share/examples/p5-SDL
EXAMPLE_LOC =		${WRKSRC}/test

pre-configure:
	${SUBST_CMD} -m 444 -c ${FILESDIR}/Openbsd.pm \
		${WRKSRC}/make/lib/SDL/Build/Openbsd.pm

post-install:
	${INSTALL_DATA_DIR} -d ${EXAMPLE_DIR}/data
	${INSTALL_DATA_DIR} -d ${EXAMPLE_DIR}/OpenGL/tutorial/Data
	${INSTALL_SCRIPT} ${EXAMPLE_LOC}/*.pl ${EXAMPLE_DIR}/
	${INSTALL_DATA} ${EXAMPLE_LOC}/README ${EXAMPLE_DIR}/
	${INSTALL_DATA} ${EXAMPLE_LOC}/OpenGL/README ${EXAMPLE_DIR}/OpenGL
	${INSTALL_SCRIPT} ${EXAMPLE_LOC}/OpenGL/*.pl \
		${EXAMPLE_DIR}/OpenGL/tutorial/
	${INSTALL_SCRIPT} ${EXAMPLE_LOC}/OpenGL/tutorial/*.pl \
		${EXAMPLE_DIR}/OpenGL/tutorial/
	${INSTALL_DATA} ${EXAMPLE_LOC}/data/* ${EXAMPLE_DIR}/data
	${INSTALL_DATA} ${EXAMPLE_LOC}/OpenGL/tutorial/Data/* \
		${EXAMPLE_DIR}/OpenGL/tutorial/Data/

.include <bsd.port.mk>
