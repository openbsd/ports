# $OpenBSD: Makefile,v 1.15 2020/06/30 07:13:48 ajacoutot Exp $

COMMENT=	Linux Audio Developer's Simple Plugin API

V=		1.13
DISTNAME=	ladspa_sdk_${V}
PKGNAME=	ladspa-${V}
REVISION=	4
CATEGORIES=	audio devel
MASTER_SITES=	${HOMEPAGE:=download/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=       https://www.ladspa.org/

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

WRKDIST=	${WRKDIR}/ladspa_sdk
WRKBUILD=	${WRKDIST}/src

USE_GMAKE=	Yes
MAKE_FILE=	makefile
ALL_TARGET=	targets
MAKE_FLAGS=	LIBRARIES=-lm OPTS="${CFLAGS}"

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
