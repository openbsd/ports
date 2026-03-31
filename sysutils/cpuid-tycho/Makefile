ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	dump and decode x86 CPUID information

GH_ACCOUNT=	tycho
GH_PROJECT=	cpuid
GH_TAGNAME=	1.8.3
PKGNAME=	cpuid-tycho-${GH_TAGNAME}

CATEGORIES=	sysutils

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	devel/meson
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cpuid ${PREFIX}/bin/cpuid-tycho

.include <bsd.port.mk>
