# $OpenBSD: Makefile,v 1.16 2015/01/21 14:40:10 sthen Exp $

COMMENT=	Catalyst authentication framework

DISTNAME=	Catalyst-Plugin-Authentication-0.10018
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime \
		www/p5-Catalyst-Plugin-Session
TEST_DEPENDS=devel/p5-Moose \
		devel/p5-Test-Exception \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		security/p5-Digest-SHA1 \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
