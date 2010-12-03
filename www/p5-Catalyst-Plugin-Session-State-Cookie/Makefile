# $OpenBSD: Makefile,v 1.10 2010/12/03 11:46:51 ajacoutot Exp $

COMMENT= 	catalyst session IDs with cookies

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-State-Cookie-0.09
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Plugin-Session>=0.19
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-MockObject
REGRESS_DEPENDS=devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
