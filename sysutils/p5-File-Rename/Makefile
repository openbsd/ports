# $OpenBSD: Makefile,v 1.3 2018/10/24 20:50:19 sthen Exp $

COMMENT =	renames multiple files

DISTNAME =	File-Rename-1.10
CATEGORIES =	sysutils

MODULES =	cpan
PKG_ARCH =	*

# perl
PERMIT_PACKAGE_CDROM =	Yes

TEST_DEPENDS =	devel/p5-Test-Pod

# Renaming 'rename' to 'prename' to avoid confusion and according to what is
# usually found on other operating systems.
post-install:
	mv ${PREFIX}/bin/rename ${PREFIX}/bin/prename
	mv ${PREFIX}/man/man1/rename.1 ${PREFIX}/man/man1/prename.1

.include <bsd.port.mk>
