# $OpenBSD: Makefile,v 1.15 2015/04/24 12:51:23 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix2-20150410
PKGNAME =		${DISTNAME:S/-unix2//}
CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/
MASTER_SITES =		https://acpica.org/sites/acpica/files/

WANTLIB =		c pthread

# BSD-ish (dual license)
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes
BUILD_DEPENDS =		devel/bison \
			devel/flex
MAKE_FLAGS =		CC="${CC}" NOOPT=true
FAKE_FLAGS =		DESTDIR=

do-test:
	cd ${WRKSRC}/tests/templates && sh templates.sh 1

.include <bsd.port.mk>
