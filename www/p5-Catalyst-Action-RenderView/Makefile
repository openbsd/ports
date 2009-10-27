# $OpenBSD: Makefile,v 1.9 2009/10/27 00:47:43 jim Exp $

COMMENT= 	sensible default end action for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Action-RenderView-0.13
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Data-Visitor->=0.24:devel/p5-Data-Visitor \
		::devel/p5-MRO-Compat \
		::www/p5-Catalyst-Runtime

REGRESS_DEPENDS=::www/p5-HTTP-Request-AsCGI

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skipdeps

CONFIGURE_STYLE=modinst

.include <bsd.port.mk>
