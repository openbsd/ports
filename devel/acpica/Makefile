COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix2-20241212
PKGNAME =		${DISTNAME:S/-unix2//}

FIX_EXTRACT_PERMISSIONS =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/

# BSD-ish (or GPLv2 or Intel's own license: triple-licensed)
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB =		c pthread

SITES =			https://downloadmirror.intel.com/843390/

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
