# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:43 sthen Exp $

COMMENT =	renames multiple files

DISTNAME =	File-Rename-1.13
CATEGORIES =	sysutils
REVISION =	0

MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-Test-Pod>=1.00 \
		devel/p5-Test-Pod-Coverage>=1.00

# Renaming 'rename' to 'prename' to avoid confusion and according to what is
# usually found on other operating systems.
post-install:
	mv ${PREFIX}/bin/rename ${PREFIX}/bin/prename
	mv ${PREFIX}/man/man1/rename.1 ${PREFIX}/man/man1/prename.1

.include <bsd.port.mk>
