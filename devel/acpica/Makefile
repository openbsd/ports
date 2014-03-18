# $OpenBSD: Makefile,v 1.10 2014/03/18 10:50:47 ajacoutot Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		reference implementation of ACPI tools
V =			20111123
DISTNAME =		acpica-unix-$V
PKGNAME =		acpica-$V
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		http://www.acpica.org/
MASTER_SITES =		${HOMEPAGE}download/

WANTLIB =		c pthread

# Intel License
# http://www.acpica.org/downloads/unix_source_code.php
PERMIT_PACKAGE_CDROM =	export restrictions
PERMIT_PACKAGE_FTP =	Yes

USE_GMAKE =		Yes
NO_TEST =		Yes
BUILD_DEPENDS =		devel/flex devel/bison

do-build:
	cd ${WRKSRC}/compiler && env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM}
	cd ${WRKSRC}/tools/acpisrc && env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM}
	cd ${WRKSRC}/tools/acpinames && env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM}
	cd ${WRKSRC}/tools/acpixtract && env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM}
	cd ${WRKSRC}/tools/acpiexec && \
	    env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM} clean acpiexec


do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/compiler/iasl ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/tools/acpisrc/acpisrc ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/tools/acpinames/acpinames ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/tools/acpixtract/acpixtract ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/tools/acpiexec/acpiexec ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/acpica/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/acpica/
	${INSTALL_DATA} ${FILESDIR}/LICENSE ${PREFIX}/share/doc/acpica/

.include <bsd.port.mk>
