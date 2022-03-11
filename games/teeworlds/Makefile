COMMENT=	platform game featuring buggers equipped with weapons

V=		0.7.5
PKGNAME=	teeworlds-${V}
DISTNAME=	${PKGNAME}-src

CATEGORIES=	games

HOMEPAGE=	https://www.teeworlds.com

MAINTAINER=	Stefan Hagen <sh+ports@codevoid.de>

MASTER_SITES=	https://github.com/teeworlds/teeworlds/releases/download/${V}/
# maps repo without tags/releases on https://github.com/teeworlds/teeworlds-maps
# therefore hosted as archive on perso.pw
MASTER_SITES0=	http://distfiles-openbsd.perso.pw/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		teeworlds-${V}-data.tar.gz{teeworlds-data.tar.gz}:0

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=	GL SDL2 X11 c crypto freetype m pthread ${COMPILER_LIBCXX}
WANTLIB+=	wavpack z

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	audio/wavpack \
		devel/sdl2

MODULES=	devel/cmake lang/python
MODPY_RUNDEP=	No

CONFIGURE_STYLE=	cmake
CONFIGURE_ARGS=		-DPYTHON_EXECUTABLE="${MODPY_BIN}"

NO_TEST=	Yes

# Give it a chance on ppc
CXXFLAGS+=	-fsigned-char

post-install:
	${INSTALL_DATA_DIR} ${WRKDIST}/datasrc/maps
	${INSTALL_DATA_DIR} ${WRKDIST}/datasrc/maps
	${INSTALL_DATA} ${WRKDIR}/maps/* ${WRKDIST}/datasrc/maps/
	${INSTALL_DATA} ${WRKDIR}/languages/* ${WRKDIST}/datasrc/languages/

.include <bsd.port.mk>
