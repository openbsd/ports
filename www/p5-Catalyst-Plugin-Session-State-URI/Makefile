# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:45 espie Exp $

COMMENT=	catalyst session IDs as URI extensions

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-State-URI-0.15
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-Moose \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast \
		devel/p5-MRO-Compat \
		devel/p5-namespace-clean \
		mail/p5-MIME-Types \
		www/p5-HTML-TokeParser-Simple \
		www/p5-URI \
		www/p5-Catalyst-Plugin-Session>=0.27 \
		www/p5-URI-Find
TEST_DEPENDS=devel/p5-Test-MockObject \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
