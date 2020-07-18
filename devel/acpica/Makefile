# $OpenBSD: Makefile,v 1.30 2020/07/18 17:26:43 daniel Exp $

COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix-20200717
PKGNAME =		${DISTNAME:S/-unix//}

CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/

MAINTAINER =		Stuart Henderson <stu.ports@spacehopper.org>

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
