# $OpenBSD: Makefile,v 1.2 2018/08/21 17:37:22 sthen Exp $

COMMENT =	renames multiple files

DISTNAME =	File-Rename-1.00
CATEGORIES =	sysutils

MODULES =	cpan
PKG_ARCH =	*

# perl
PERMIT_PACKAGE_CDROM =	Yes

# Renaming 'rename' to 'prename' to avoid confusion and according to what is
# usually found on other operating systems.
post-install:
	mv ${PREFIX}/bin/rename ${PREFIX}/bin/prename
	mv ${PREFIX}/man/man1/rename.1 ${PREFIX}/man/man1/prename.1

.include <bsd.port.mk>
