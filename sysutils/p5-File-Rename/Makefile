# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:47 sthen Exp $

COMMENT =	renames multiple files

DISTNAME =	File-Rename-1.10
CATEGORIES =	sysutils

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
