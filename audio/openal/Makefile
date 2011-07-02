# $OpenBSD: Makefile,v 1.24 2011/07/02 07:34:31 jasper Exp $

COMMENT =	cross-platform 3D audio API

V =		20110627
DISTNAME =	openal-soft-$V
PKGNAME =	openal-$V
CATEGORIES =	audio
SHARED_LIBS =	openal	2.0

HOMEPAGE =	http://kcat.strangesoft.net/openal.html

MAINTAINER =	Antti Harri <iku@openbsd.fi>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread sndio

MASTER_SITES =	${HOMEPAGE:S,.html,-releases/,} \
		http://openbsd.fi/dist/

CONFIGURE_ARGS =-DCMAKE_C_FLAGS="${CFLAGS} -DNDEBUG"	\
		-DCMAKE_BUILD_TYPE=OpenBSD		\
		-DDLOPEN=Off				\
		-DPULSEAUDIO=Off			\
		-DPORTAUDIO=Off				\
		-DSOLARIS=Off				\
		-DALSA=Off				\
		-DOSS=Off

MODULES =	devel/cmake

NO_REGRESS =	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/Alc/alcConfig.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openal
	${INSTALL_DATA} ${WRKSRC}/alsoftrc.sample \
		${PREFIX}/share/examples/openal

.include <bsd.port.mk>
