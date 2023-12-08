ONLY_FOR_ARCHS =aarch64 amd64 i386

COMMENT =	fast ROP gadget finder for multiple targets

GH_ACCOUNT =	0vercl0k
GH_PROJECT =	rp
GH_TAGNAME =	v2.1.3
PKGNAME =	rp++-${GH_TAGNAME:S/v//}

CATEGORIES =	security

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =Yes

WANTLIB =	${COMPILER_LIBCXX} c m
COMPILER=	base-clang ports-gcc

MODULES =	devel/cmake

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/src

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rp-lin ${PREFIX}/bin/rp++

.include <bsd.port.mk>
