# $OpenBSD: Makefile,v 1.1.1.1 2020/01/18 15:16:22 kn Exp $

# ectool requires amd64_iopl(2)
# intelmetool requires <amd64/pio.h>
ONLY_FOR_ARCHS =	amd64

COMMENT =		collection of utilities to work with firmware images

V =			4.11
DISTNAME =		coreboot-${V}
PKGNAME =		coreboot-utils-${V}

CATEGORIES =		sysutils devel

HOMEPAGE =		https://coreboot.org

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		https://coreboot.org/releases/

EXTRACT_SUFX =		.tar.xz

USE_GMAKE =		Yes

NO_TEST =		Yes

# some util/*/Makefile use [HOST]CC=gcc
MAKE_FLAGS =		CC=${CC} \
			HOSTCC=${CC} \

FAKE_FLAGS =		PREFIX=${PREFIX}

UTILS =			cbmem \
			ectool \
			ifdtool

do-build:
.for u in ${UTILS}
	env -i ${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKSRC}/util/${u} \
		${MAKE_FLAGS} ${ALL_TARGET}
.endfor

do-install:
.for u in ${UTILS}
	env -i ${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKSRC}/util/${u} \
		${FAKE_FLAGS} ${INSTALL_TARGET}
.endfor

.include <bsd.port.mk>
