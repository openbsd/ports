# $OpenBSD: Makefile,v 1.13 2011/05/02 18:42:56 gsoares Exp $

COMMENT=		automated interface to the Wikipedia encyclopedia

DISTNAME=		WWW-Wikipedia-2.00
CATEGORIES=		www

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/p5-Text-Autoformat \
			www/p5-libwww \
			www/p5-URI
REGRESS_DEPENDS=	devel/p5-Test-Exception
MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
