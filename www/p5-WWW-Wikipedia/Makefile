# $OpenBSD: Makefile,v 1.16 2016/03/20 19:57:23 naddy Exp $

COMMENT=		automated interface to the Wikipedia encyclopedia

DISTNAME=		WWW-Wikipedia-2.01
CATEGORIES=		www

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

MODULES=		cpan
PKG_ARCH=		*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/p5-Text-Autoformat \
			www/p5-libwww \
			www/p5-URI
TEST_DEPENDS=	devel/p5-Test-Exception
MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
