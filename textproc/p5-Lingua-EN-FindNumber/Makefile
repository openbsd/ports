# $OpenBSD: Makefile,v 1.5 2019/03/10 21:36:01 afresh1 Exp $

COMMENT =	locate (written) numbers in English text 
DISTNAME =	Lingua-EN-FindNumber-1.32
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# same terms as Perl itself
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	textproc/p5-Lingua-EN-Words2Nums>=0

MAKE_ENV =	TEST_POD=1

.include <bsd.port.mk>
