# $OpenBSD: Makefile,v 1.16 2019/05/12 15:02:05 cwen Exp $

COMMENT = 	perl extension for emulating troublesome interfaces

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-MockObject-1.20180705
CATEGORIES =	devel

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Universal-can>=1.20110617 \
		devel/p5-Universal-isa>=1.20110614

TEST_DEPENDS =	devel/p5-Test-Exception>=0.31 \
		devel/p5-Test-Warn>=0.23 \
		www/p5-CGI>=4.15

.include <bsd.port.mk>
