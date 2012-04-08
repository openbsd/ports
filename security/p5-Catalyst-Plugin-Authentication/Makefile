# $OpenBSD: Makefile,v 1.14 2012/04/08 22:02:33 sthen Exp $

COMMENT=	Catalyst authentication framework

DISTNAME=	Catalyst-Plugin-Authentication-0.10018
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime \
		www/p5-Catalyst-Plugin-Session
REGRESS_DEPENDS=devel/p5-Moose \
		devel/p5-Test-Exception \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		security/p5-Digest-SHA1 \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
