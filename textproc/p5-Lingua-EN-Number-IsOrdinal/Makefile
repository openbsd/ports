# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:05 naddy Exp $

COMMENT =	detect if English number is ordinal or cardinal
DISTNAME =	Lingua-EN-Number-IsOrdinal-0.05
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	textproc/p5-Lingua-EN-FindNumber>=0
TEST_DEPENDS =	devel/p5-Test-Fatal>=0 \
		devel/p5-Try-Tiny>=0

.include <bsd.port.mk>
