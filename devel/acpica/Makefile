# $OpenBSD: Makefile,v 1.14 2014/12/17 00:27:23 daniel Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix2-20141107
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
