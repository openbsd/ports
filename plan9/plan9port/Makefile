# $OpenBSD: Makefile,v 1.37 2021/01/30 12:51:34 jsg Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc
BROKEN-i386 =		various "invalid operand for instruction", OpenBSD-386-asm.S
BROKEN-powerpc =	threading issues

COMMENT =		Plan 9 from user space

DISTNAME =		plan9port-20210129

GH_ACCOUNT =		9fans
GH_PROJECT =		plan9port
GH_COMMIT =		36cd4c58c1346375b98f517fb8568be5bb47618d

CATEGORIES =		plan9

HOMEPAGE =		https://9fans.github.io/plan9port/

MAINTAINER =		Gleydson Soares <gsoares@openbsd.org>

# mostly LPL (see LICENSE)
# certain fonts may NOT be redistributed separately
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext c m pthread util fontconfig freetype z

WRKDIST =		${WRKDIR}/plan9port-${GH_COMMIT}

PLAN9 =			${PREFIX}/plan9

NO_TEST =		Yes

SUBST_VARS +=		CC
UPDATE_PLIST_ARGS += -i CC

pre-configure:
	${SUBST_CMD} ${WRKSRC}/INSTALL ${WRKSRC}/bin/{9c,9l}
	cd ${WRKSRC} && sed -i 's,#!/bin/bash,#!/bin/sh,' \
		bin/{macedit,wintext}

do-build:
	cd ${WRKSRC} && env CC9="${CC}" CCFLAGS="${CFLAGS}" ./INSTALL -b

do-install:
.for l in .cvsignore .hg .hgignore .hgtags .gitignore .gitkeep *.orig *.beforesubst .travis.yml
	find ${WRKSRC} -name "$l" -delete
.endfor
	cd ${WRKSRC} && sed -i 's#/usr/local#${TRUEPREFIX}#' \
		`cat lib/moveplan9.files`

	${INSTALL_DATA_DIR} ${PLAN9}
	cd ${WRKSRC} && pax -rw . ${PLAN9}
	cd ${PREFIX} && ln -s ../plan9/bin/9 bin/9

.include <bsd.port.mk>
