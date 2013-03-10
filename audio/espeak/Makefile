# $OpenBSD: Makefile,v 1.11 2013/03/10 22:55:02 espie Exp $

COMMENT=		compact speech synthesizer

DISTNAME=		espeak-1.46.02-source
PKGNAME=		${DISTNAME:S/-source//}
REVISION=		0
SHARED_LIBS=		espeak 1.0

CATEGORIES=		audio devel

HOMEPAGE=		http://espeak.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=espeak/}
EXTRACT_SUFX=		.zip

WANTLIB=		c m pthread stdc++ portaudio

LIB_DEPENDS=		audio/portaudio-svn

USE_GMAKE=		Yes

NO_TEST=		Yes

WRKSRC= 		${WRKDIST}/src

MAKE_FLAGS+=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

.if ${MACHINE_ARCH} == "amd64"
MAKE_FLAGS +=		EXTRA_FLAGS="-fPIC"
.endif

SUBST_VARS=		PREFIX LIBespeak_VERSION

pre-configure:
	@cp ${LOCALBASE}/include/portaudio.h ${WRKSRC}/portaudio.h
	${SUBST_CMD} ${WRKSRC}/speech.h ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/espeak ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/libespeak* ${PREFIX}/lib/
	${INSTALL_DATA} ${WRKSRC}/speak_lib.h ${PREFIX}/include/
	${INSTALL_DATA_DIR} ${PREFIX}/share/espeak-data
	cd ${WRKDIST}/espeak-data; tar cf - * | tar xf - -C \
		${PREFIX}/share/espeak-data
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/espeak
	${INSTALL_DATA} ${WRKDIST}/docs/*.html ${PREFIX}/share/doc/espeak

.include <bsd.port.mk>
