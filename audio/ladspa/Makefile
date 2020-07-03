# $OpenBSD: Makefile,v 1.16 2020/07/03 18:29:35 ajacoutot Exp $

COMMENT=	Linux Audio Developer's Simple Plugin API

V=		1.15
DISTNAME=	ladspa_sdk_${V}
PKGNAME=	ladspa-${V}
CATEGORIES=	audio devel
MASTER_SITES=	${HOMEPAGE:=download/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=       https://www.ladspa.org/

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

WRKBUILD=	${WRKDIST}/src

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
