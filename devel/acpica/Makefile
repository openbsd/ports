# $OpenBSD: Makefile,v 1.4 2009/01/03 19:51:04 naddy Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		reference implementation of ACPI tools
V =			20080701
DISTNAME =		acpica-unix-${V}
PKGNAME =		acpica-${V}p0
CATEGORIES =		devel

HOMEPAGE =		http://www.acpica.org
MASTER_SITES =		${HOMEPAGE}/download/
MAINTAINER =		Peter Hessler <phessler@openbsd.org>

WANTLIB =		c

# Intel License
# http://www.acpica.org/downloads/unix_source_code.php
PERMIT_PACKAGE_CDROM =	export restrictions
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =export restrictions
PERMIT_DISTFILES_FTP =	Yes

USE_GMAKE =		Yes
NO_REGRESS = 		Yes

pre-configure:
	@perl -pi -e 's#-O2##g' ${WRKSRC}/compiler/Makefile \
	    ${WRKSRC}/tools/acpisrc/Makefile \
	    ${WRKSRC}/tools/acpiexec/Makefile

do-build:
	cd ${WRKSRC}/compiler && env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM}
	cd ${WRKSRC}/tools/acpisrc && env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM}
	cd ${WRKSRC}/tools/acpiexec && \
	    env CFLAGS="${CFLAGS}" ${MAKE_PROGRAM} clean acpiexec

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/compiler/iasl ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/tools/acpisrc/acpisrc ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/tools/acpiexec/acpiexec ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/acpica/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/acpica/
	${INSTALL_DATA} ${FILESDIR}/LICENSE ${PREFIX}/share/doc/acpica/

.include <bsd.port.mk>
