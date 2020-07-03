# $OpenBSD: Makefile,v 1.20 2020/07/03 21:45:39 sthen Exp $

COMMENT=	Catalyst authentication framework

DISTNAME=	Catalyst-Plugin-Authentication-0.10018
CATEGORIES=	security
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

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
