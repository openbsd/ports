# $OpenBSD: Makefile,v 1.17 2016/01/06 16:29:18 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix2-20151218
PKGNAME =		${DISTNAME:S/-unix2//}
CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/
MASTER_SITES =		https://acpica.org/sites/acpica/files/

WANTLIB =		c pthread

# BSD-ish (dual license)
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes
BUILD_DEPENDS =		devel/bison
MAKE_FLAGS =		CC="${CC}" NOOPT=true
FAKE_FLAGS =		DESTDIR=

do-test:
	cd ${WRKSRC}/tests/templates && sh templates.sh 1

.include <bsd.port.mk>
