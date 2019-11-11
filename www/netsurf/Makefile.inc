# $OpenBSD: Makefile.inc,v 1.21 2019/11/11 03:21:55 bentley Exp $

CATEGORIES +=	www

# child ports MUST define NETSURF_{PROJECT,VERSION}

PKGNAME ?=	${NETSURF_PROJECT}-${NETSURF_VERSION}
DISTNAME ?=	${NETSURF_PROJECT}-${NETSURF_VERSION}-src

MAINTAINER ?=	Anthony J. Bentley <anthony@anjbe.name>
HOMEPAGE ?=	https://www.netsurf-browser.org/projects/${NETSURF_PROJECT}/
MASTER_SITES ?=	https://download.netsurf-browser.org/libs/releases/

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}

WRKDIST ?=	${WRKDIR}/${DISTNAME:S/-src//}

# MIT for libs / GPLv2 for netsurf
PERMIT_PACKAGE=	Yes

DESTDIRNAME =	${DESTDIR}

TEST_TARGET =	test
USE_GMAKE =	Yes

# not used for browser
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	COMPONENT_TYPE=lib-shared \
		NS_LIB_VERSION=${_v}
.endfor

.if ${NETSURF_PROJECT} != "buildsystem"
BUILD_DEPENDS +=	www/netsurf/buildsystem>=1.6
MAKE_FLAGS +=		Q= \
			VQ= \
			CC="${CC}" \
			CCOPT= \
			CXXOPT= \
			CCACHE= \
			FLEX=flex \
			NSSHARED=${LOCALBASE}/share/netsurf-buildsystem
.endif
