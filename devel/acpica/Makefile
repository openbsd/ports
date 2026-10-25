COMMENT =		reference implementation of ACPI tools

V =			20260930
DISTNAME =		acpica-unix-$V
PKGNAME =		acpica-$V

SITES =			https://github.com/open-acpica/acpica/releases/download/$V/

FIX_EXTRACT_PERMISSIONS =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CATEGORIES =		devel

# https://open-acpica.github.io/
# https://github.com/open-acpica/acpica/releases
HOMEPAGE =		https://acpica.org/

# dual licensed: BSD or GPLv2
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB =		c pthread

USE_GMAKE =		Yes
BUILD_DEPENDS =		devel/bison
MAKE_FLAGS =		CC="${CC}" \
			ACPI_HOST=_LINUX \
			NOWERROR=TRUE
FAKE_FLAGS =		DESTDIR=

# pass what INSTALL_PROGRAM uses
FAKE_FLAGS +=		INSTALLFLAGS='${INSTALL_STRIP} -m ${BINMODE}'

do-test:
	cd ${WRKSRC}/tests/templates && sh templates.sh 1

.include <bsd.port.mk>
