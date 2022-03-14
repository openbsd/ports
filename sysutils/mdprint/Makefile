COMMENT =		print sun4v machine descriptions

# mdprint is just a tool next to the actual ldomsmanager sources
DISTNAME =		ldomsmanager-3.5.0.0-30.2411.1
# own version, documented in source code
PKGNAME =		mdprint-1.3
REVISION =		4

CATEGORIES =		sysutils devel

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Universal Permissive License (UPL), Version 1.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://yum.oracle.com/repo/OracleLinux/OL6/latest/source/getPackageSource/
EXTRACT_SUFX =		.el6.src.rpm
# the SRC RPM contains a SPEC file and the actual uncompressed source tarball
EXTRACT_FILES =		${DISTNAME}.tar

MODULES =		lang/python
MODPY_ADJ_FILES =	${MDPRINT}

SEPARATE_BUILD =	Yes

MDPRINT =		tools/mdprint/mdprint.py

NO_TEST =		Yes

post-extract:
	cd ${WRKDIR} && ${TAR} -xf${EXTRACT_FILES} ${DISTNAME}/${MDPRINT}

do-build:
	2to3-${MODPY_VERSION} -j${MAKE_JOBS} -Wno${WRKBUILD} ${WRKSRC}/${MDPRINT}

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/mdprint.py ${PREFIX}/bin/mdprint

.include <bsd.port.mk>
