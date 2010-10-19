# $OpenBSD: Makefile,v 1.15 2010/10/19 08:02:54 espie Exp $

COMMENT= 	catalyst plugin to Config::Any

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-ConfigLoader-0.28
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Config-Any \
		::devel/p5-Data-Visitor \
		::devel/p5-MRO-Compat \
		:p5-Catalyst-Runtime->=5.80024:www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
