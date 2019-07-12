# $OpenBSD: Makefile,v 1.20 2019/07/12 20:43:33 sthen Exp $

COMMENT=		compact speech synthesizer

DISTNAME=		espeak-1.48.04-source
EXTRACT_SUFX=		.zip
PKGNAME=		${DISTNAME:S/-source//}
REVISION=		1

SHARED_LIBS=		espeak 1.2

CATEGORIES=		audio devel

HOMEPAGE=		http://espeak.sourceforge.net/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c m portaudio pthread ${COMPILER_LIBCXX}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=espeak/}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		audio/portaudio-svn

USE_GMAKE=		Yes
NO_TEST=		Yes

WRKSRC= 		${WRKDIST}/src

MAKE_FLAGS +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" EXTRA_FLAGS="-fPIC"

SUBST_VARS=		LIBespeak_VERSION

pre-configure:
	@cp ${LOCALBASE}/include/portaudio.h ${WRKSRC}/portaudio.h
	${SUBST_CMD} ${WRKSRC}/speech.h ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/espeak
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/espeak
	${INSTALL_DATA_DIR} ${PREFIX}/share/espeak-data
	${INSTALL_PROGRAM} ${WRKSRC}/espeak ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/libespeak* ${PREFIX}/lib/
	${INSTALL_DATA} ${WRKSRC}/speak_lib.h ${PREFIX}/include/espeak/
	cd ${WRKDIST}/espeak-data; tar cf - * | tar xf - -C \
		${PREFIX}/share/espeak-data
	${INSTALL_DATA} ${WRKDIST}/docs/*.html ${PREFIX}/share/doc/espeak

.include <bsd.port.mk>
