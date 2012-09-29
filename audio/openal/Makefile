# $OpenBSD: Makefile,v 1.26 2012/09/29 06:49:03 landry Exp $

BROKEN-hppa =	undefined reference to __sync atomic ops

COMMENT =	cross-platform 3D audio API

V =		1.14
EPOCH =		0
DISTNAME =	openal-soft-$V
PKGNAME =	openal-$V
CATEGORIES =	audio
SHARED_LIBS =	openal	2.1

HOMEPAGE =	http://kcat.strangesoft.net/openal.html

MAINTAINER =	Antti Harri <iku@openbsd.fi>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread sndio

MASTER_SITES =	${HOMEPAGE:S,.html,-releases/,}
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_ARGS =-DCMAKE_C_FLAGS="${CFLAGS} -DNDEBUG"	\
		-DCMAKE_BUILD_TYPE=OpenBSD		\
		-DDLOPEN=Off				\
		-DREQUIRE_SNDIO=On			\
		-DPULSEAUDIO=Off			\
		-DPORTAUDIO=Off				\
		-DSOLARIS=Off				\
		-DALSA=Off				\
		-DOSS=Off				\
		-DCOREAUDIO=Off				\
		-DDSOUND=Off				\
		-DOPENSL=Off				\
		-DEXAMPLES=Off

MODULES =	devel/cmake

SEPARATE_BUILD =Yes
NO_REGRESS =	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/Alc/alcConfig.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openal
	${INSTALL_DATA} ${WRKSRC}/alsoftrc.sample \
		${PREFIX}/share/examples/openal

.include <bsd.port.mk>
