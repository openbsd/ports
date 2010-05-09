# $OpenBSD: Makefile,v 1.4 2010/05/09 21:18:29 robert Exp $

COMMENT=	linux audio developer simple plugin API
HOMEPAGE=	http://www.ladspa.org/
CATEGORIES=	audio devel

V=		1.13

SHARED_ONLY=	Yes
DISTNAME=	ladspa_sdk_${V}
WRKDIST=	${WRKDIR}/ladspa_sdk
PKGNAME=	ladspa-${V}
EXTRACT_SUFX=	.tgz
MASTER_SITES=	${HOMEPAGE:=download/}

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WRKBUILD=	${WRKDIST}/src
USE_GMAKE=	Yes
MAKE_FILE=	makefile
ALL_TARGET=	targets
MAKE_FLAGS=	LIBRARIES=-lm OPTS="${CFLAGS}"

PROGRAMS=	analyseplugin applyplugin listplugins
WANTLIB=	c m

do-install:
.for i in ${PROGRAMS}
	${INSTALL_PROGRAM} ${WRKDIST}/bin/$i	${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR}	${PREFIX}/lib/ladspa
	${INSTALL_DATA} ${WRKDIST}/plugins/*.so		${PREFIX}/lib/ladspa
	${INSTALL_DATA_DIR}	${PREFIX}/share/doc/ladspa
	${INSTALL_DATA}	${WRKDIST}/doc/*.html ${PREFIX}/share/doc/ladspa
	${INSTALL_DATA}	${WRKDIST}/src/ladspa.h ${PREFIX}/include

# interactive regression test, that requires you to listen to stuff.
# -> mostly useless
NO_REGRESS=	Yes


.include <bsd.port.mk>

