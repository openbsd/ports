# $OpenBSD: Makefile,v 1.4 2020/07/03 21:13:10 sthen Exp $

COMMENT =		print sun4v machine descriptions

# mdprint is just a tool next to the actual ldomsmanager sources
DISTNAME =		ldomsmanager-3.5.0.0-30.2411.1
# own version, documented in source code
PKGNAME =		mdprint-1.3
REVISION =		1

CATEGORIES =		sysutils devel

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Universal Permissive License (UPL), Version 1.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://yum.oracle.com/repo/OracleLinux/OL6/latest/source/getPackageSource/
EXTRACT_SUFX =		.el6.src.rpm
EXTRACT_ONLY =		# empty

BUILD_DEPENDS =		converters/rpm2cpio

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES =	${MDPRINT}

MDPRINT =		tools/mdprint/mdprint.py

NO_TEST =		Yes

# the SRC RPM contains a SPEC file and the actual uncompressed source tarball
post-extract:
	cd ${WRKDIR} && rpm2cpio ${FULLDISTDIR}/${DISTFILES} | \
		cpio -i ${DISTNAME}.tar
	${TAR} -C${WRKDIR} -xf${WRKDIR}/${DISTNAME}.tar ${DISTNAME}/${MDPRINT}

do-build:
	2to3 --no-diffs -w ${WRKSRC}/${MDPRINT}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${MDPRINT} ${PREFIX}/bin/mdprint

.include <bsd.port.mk>
