# $OpenBSD: Makefile,v 1.36 2022/01/17 18:02:27 daniel Exp $

COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix-20211217
PKGNAME =		${DISTNAME:S/-unix//}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/

# BSD-ish (or GPLv2 or Intel's own license: triple-licensed)
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		https://acpica.org/sites/acpica/files/

USE_GMAKE =		Yes
BUILD_DEPENDS =		devel/bison
MAKE_FLAGS =		CC="${CC}" HOST=_LINUX
FAKE_FLAGS =		DESTDIR=

# pass what INSTALL_PROGRAM uses
FAKE_FLAGS +=		INSTALLFLAGS='${INSTALL_STRIP} -m ${BINMODE}'

do-test:
	cd ${WRKSRC}/tests/templates && sh templates.sh 1

.include <bsd.port.mk>
