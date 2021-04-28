# $OpenBSD: Makefile,v 1.9 2021/04/28 19:50:11 sthen Exp $

COMMENT =	renames multiple files

DISTNAME =	File-Rename-1.20
CATEGORIES =	sysutils

MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-IO-stringy \
		devel/p5-Test-Pod>=1.00 \
		devel/p5-Test-Pod-Coverage>=1.00 \
		textproc/p5-Pod-Parser

# Renaming 'rename' to 'prename' to avoid confusion and according to what is
# usually found on other operating systems.
post-install:
	mv ${PREFIX}/bin/rename ${PREFIX}/bin/prename
	mv ${PREFIX}/man/man1/rename.1 ${PREFIX}/man/man1/prename.1

.include <bsd.port.mk>
