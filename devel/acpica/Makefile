# $OpenBSD: Makefile,v 1.26 2019/06/03 17:37:54 sthen Exp $

COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix-20190509
PKGNAME =		${DISTNAME:S/-unix//}

CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD-ish (or GPLv2 or Intel's own license: triple-licensed)
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		https://acpica.org/sites/acpica/files/

USE_GMAKE =		Yes
BUILD_DEPENDS =		devel/bison
MAKE_FLAGS =		CC="${CC}"
FAKE_FLAGS =		DESTDIR=

do-test:
	cd ${WRKSRC}/tests/templates && sh templates.sh 1

.include <bsd.port.mk>
