# $OpenBSD: Makefile,v 1.10 2021/09/08 19:28:13 bluhm Exp $

COMMENT =	renames multiple files

DISTNAME =	File-Rename-1.30

CATEGORIES =	sysutils

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
TEST_DEPENDS =		textproc/p5-Pod-Parser

PKG_ARCH =		*

# Renaming 'rename' to 'prename' to avoid confusion and according to what is
# usually found on other operating systems.
post-install:
	mv ${PREFIX}/bin/rename ${PREFIX}/bin/prename
	mv ${PREFIX}/man/man1/rename.1 ${PREFIX}/man/man1/prename.1

.include <bsd.port.mk>
