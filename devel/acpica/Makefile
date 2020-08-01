# $OpenBSD: Makefile,v 1.31 2020/08/01 11:30:36 sthen Exp $

COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix-20200717
PKGNAME =		${DISTNAME:S/-unix//}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/

# BSD-ish (or GPLv2 or Intel's own license: triple-licensed)
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		https://acpica.org/sites/acpica/files/

# XXX: 20200717 distfile appears to have an extra "_0"
DISTFILES =		${DISTNAME}.tar.gz{${DISTNAME}.tar_0.gz}

USE_GMAKE =		Yes
BUILD_DEPENDS =		devel/bison
MAKE_FLAGS =		CC="${CC}" HOST=_LINUX
FAKE_FLAGS =		DESTDIR=

do-test:
	cd ${WRKSRC}/tests/templates && sh templates.sh 1

.include <bsd.port.mk>
