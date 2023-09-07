COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix-20230628
PKGNAME =		${DISTNAME:S/-unix//}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/

# BSD-ish (or GPLv2 or Intel's own license: triple-licensed)
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

SITES =			https://downloadmirror.intel.com/783534/

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
