# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:03 sthen Exp $

COMMENT =	locate (written) numbers in English text 
DISTNAME =	Lingua-EN-FindNumber-1.32
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# same terms as Perl itself
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	textproc/p5-Lingua-EN-Words2Nums>=0

MAKE_ENV =	TEST_POD=1

.include <bsd.port.mk>
