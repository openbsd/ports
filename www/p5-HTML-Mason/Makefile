# $OpenBSD: Makefile,v 1.21 2009/12/04 12:58:12 pea Exp $

COMMENT=	high-performance dynamic web authoring system

MODULES=	cpan
DISTNAME=	HTML-Mason-1.42
CATEGORIES=	www

HOMEPAGE=	http://www.masonhq.com/
MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Params-Validate->=0.74:devel/p5-Params-Validate \
		:mod_perl->=1.27:www/mod_perl \
		:p5-libapreq->=1.1:www/p5-libapreq \
		:p5-Exception-Class->=1.19:devel/p5-Exception-Class \
		:p5-Class-Container->=0.10:devel/p5-Class-Container \
		:p5-Cache-Cache->=1.02:devel/p5-Cache-Cache

MAKE_ENV=       TEST_POD=Yes

REGRESS_DEPENDS=::devel/p5-Test-Memory-Cycle \
		::devel/p5-PadWalker

CONFIGURE_STYLE=	modbuild
CONFIGURE_ARGS+=	--no-prompts

.include <bsd.port.mk>
