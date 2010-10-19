# $OpenBSD: Makefile,v 1.6 2010/10/19 07:54:22 espie Exp $

COMMENT=	unicode-aware catalyst

DISTNAME=	Catalyst-Plugin-Unicode-0.8
REVISION=	0
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime
# the following dependencies are actually REGRESS_DEPENDS, but
# Module::Install pulls them all at build time
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/p5-IO-stringy \
		::devel/p5-Test-WWW-Mechanize-Catalyst \
		::devel/p5-Test-use-ok

MAKE_ENV=	TEST_POD=Yes
.include <bsd.port.mk>
