# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:46 sthen Exp $

COMMENT =	locate (written) numbers in English text 
DISTNAME =	Lingua-EN-FindNumber-1.32
CATEGORIES =	textproc
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# same terms as Perl itself
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	textproc/p5-Lingua-EN-Words2Nums>=0

MAKE_ENV =	TEST_POD=1

.include <bsd.port.mk>
