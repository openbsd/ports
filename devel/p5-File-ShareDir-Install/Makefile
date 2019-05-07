# $OpenBSD: Makefile,v 1.6 2019/05/07 20:07:47 cwen Exp $

COMMENT= 	install shared files, to use with File::ShareDir

MODULES=	cpan

PKG_ARCH=	*

DISTNAME=	File-ShareDir-Install-0.13

CATEGORIES=	devel

FIX_EXTRACT_PERMISSIONS=	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

# Tests fails run when run with -j>1 (MAKE_JOBS>1) see
# https://rt.cpan.org/Public/Bug/Display.html?id=111296
# Upstream has fixed the issue, but MAKE_JOBS takes
# precedence even over the HARNESS_OPTIONS env variable.
TEST_FLAGS+=	-j1

.include <bsd.port.mk>
