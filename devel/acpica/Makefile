# $OpenBSD: Makefile,v 1.18 2016/01/11 11:26:19 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix2-20151218
PKGNAME =		${DISTNAME:S/-unix2//}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD-ish (dual license)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MASTER_SITES =		https://acpica.org/sites/acpica/files/

USE_GMAKE =		Yes
BUILD_DEPENDS =		devel/bison
MAKE_FLAGS =		CC="${CC}" NOOPT=true
FAKE_FLAGS =		DESTDIR=

do-test:
	cd ${WRKSRC}/tests/templates && sh templates.sh 1

.include <bsd.port.mk>
