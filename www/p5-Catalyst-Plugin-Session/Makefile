# $OpenBSD: Makefile,v 1.13 2012/04/08 21:58:38 sthen Exp $

COMMENT=	session framework for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-0.32
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Moose \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast \
		devel/p5-MRO-Compat \
		devel/p5-Object-Signature
REGRESS_DEPENDS=devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		www/p5-Catalyst-Plugin-Session-State-Cookie \
		devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
