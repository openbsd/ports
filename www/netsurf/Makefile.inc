# $OpenBSD: Makefile.inc,v 1.6 2013/03/11 12:27:54 sthen Exp $

CATEGORIES +=	www/netsurf

# child ports MUST define NETSURF_{PROJECT,VERSION}

PKGNAME ?=	${DISTNAME:S/-src//}
DISTNAME ?=	${NETSURF_PROJECT}-${NETSURF_VERSION}-src

MAINTAINER ?=	Anthony J. Bentley <anthony@cathet.us>
HOMEPAGE ?=	http://www.netsurf-browser.org/projects/${NETSURF_PROJECT}/
MASTER_SITES ?=	http://www.netsurf-browser.org/projects/releases/

WRKDIST ?=	${WRKDIR}/${DISTNAME:S/-src//}

# MIT for libs / GPLv2 for netsurf
PERMIT_PACKAGE_CDROM=	Yes

DESTDIRNAME =	${DESTDIR}

TEST_TARGET =test
USE_GMAKE =	Yes

# not used for browser
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	COMPONENT_TYPE=lib-shared \
		LIB${_l}_VERSION=${_v}
.endfor
