BROKEN-sparc64=	relocation truncated to fit: R_SPARC_GOT13

COMMENT=		free open source disk encryption software

V=			1.25.9
DISTNAME=		VeraCrypt_${V}_Source
PKGNAME=		veracrypt-${V}
CATEGORIES=		security
HOMEPAGE=		https://www.veracrypt.fr/
REVISION=		1

MAINTAINER=		Tietoturvamies <main@tietoturvamies.fi>

# Apache2
PERMIT_PACKAGE=	yes

SITES=			https://launchpad.net/veracrypt/trunk/${V}/+download/
EXTRACT_SUFX=		.tar.bz2
FIX_EXTRACT_PERMISSIONS=Yes

# C++11
COMPILER=		base-clang ports-gcc

CXXFLAGS_base-clang =	-std=c++14

WANTLIB += ${COMPILER_LIBCXX} c m fuse wx_baseu-3.2 wx_gtk3u_core-3.2

BUILD_DEPENDS=		devel/yasm \
			sysutils/coreutils

LIB_DEPENDS=		x11/wxWidgets

RUN_DEPENDS=		devel/desktop-file-utils \
			security/sudo

WRKDIST=		${WRKDIR}/src
USE_GMAKE=		Yes
ALL_TARGET=		
MAKE_FLAGS=		VERBOSE=1 \
			NOTEST=1 \
			CC="${CC}" \
			CXX="${CXX}" \
			PORT_CFLAGS="${CFLAGS}" \
			PORT_CXXFLAGS="${CXXFLAGS}"

NO_TEST=		Yes

.if ${MACHINE_ARCH:Mi386}
MAKE_ENV+=		LFLAGS=-Wl,-z,notext
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Setup/FreeBSD/veracrypt.desktop

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Main/veracrypt ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/Setup/FreeBSD/veracrypt.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/Resources/Icons/VeraCrypt-48x48.xpm \
		${PREFIX}/share/pixmaps/veracrypt.xpm

.include <bsd.port.mk>
