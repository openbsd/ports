COMMENT=	Linux Audio Developer's Simple Plugin API

V=		1.17
REVISION=	0
DISTNAME=	ladspa_sdk_${V}
PKGNAME=	ladspa-${V}
CATEGORIES=	audio devel
SITES=		${HOMEPAGE:=download/} \
		https://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

HOMEPAGE=       https://www.ladspa.org/

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c m sndfile ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

WRKBUILD=	${WRKDIST}/src

LIB_DEPENDS=	audio/libsndfile

USE_GMAKE=	Yes

ALL_TARGET=	targets

# interactive regression test, that requires you to listen to stuff.
NO_TEST=	Yes

PROGRAMS=	analyseplugin applyplugin listplugins

do-install:
.for i in ${PROGRAMS}
	${INSTALL_PROGRAM} ${WRKDIST}/bin/$i	${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR}	${PREFIX}/lib/ladspa
	${INSTALL_DATA} ${WRKDIST}/plugins/*.so		${PREFIX}/lib/ladspa
	${INSTALL_DATA_DIR}	${PREFIX}/share/doc/ladspa
	${INSTALL_DATA}	${WRKDIST}/doc/*.html ${PREFIX}/share/doc/ladspa
	${INSTALL_DATA}	${WRKDIST}/src/ladspa.h ${PREFIX}/include

.include <bsd.port.mk>
