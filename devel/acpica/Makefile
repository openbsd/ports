# $OpenBSD: Makefile,v 1.12 2014/05/20 16:37:08 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		reference implementation of ACPI tools
V =			20121018
DISTNAME =		acpica-unix2-$V
PKGNAME =		acpica-$V
CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/
MASTER_SITES =		https://acpica.org/sites/acpica/files/

WANTLIB =		c pthread

# BSD-ish (dual license)
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes
BUILD_DEPENDS =		devel/flex devel/bison

do-build:
	cd ${WRKSRC}/source/compiler && env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM}
.for i in acpisrc acpinames acpixtract
	cd ${WRKSRC}/source/tools/$i && env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM}
.endfor
	cd ${WRKSRC}/source/tools/acpiexec && \
	    env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM} clean acpiexec

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/source/compiler/iasl ${PREFIX}/bin/
.for i in acpisrc acpinames acpixtract acpiexec
	${INSTALL_PROGRAM} ${WRKSRC}/source/tools/$i/$i ${PREFIX}/bin/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/acpica/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/acpica/
	${INSTALL_DATA} ${FILESDIR}/LICENSE ${PREFIX}/share/doc/acpica/

do-test:
	cd ${WRKSRC}/tests/templates && sh templates.sh 1

.include <bsd.port.mk>
