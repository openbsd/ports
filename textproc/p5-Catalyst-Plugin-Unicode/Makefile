# $OpenBSD: Makefile,v 1.3 2008/07/27 18:05:04 simon Exp $

COMMENT=	unicode-aware catalyst

DISTNAME=	Catalyst-Plugin-Unicode-0.8
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::www/p5-Catalyst-Runtime
# the following dependencies are actually REGRESS_DEPENDS, but
# Module::Install pulls them all at build time
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/p5-IO-stringy \
		::devel/p5-Test-WWW-Mechanize-Catalyst \
		::devel/p5-Test-use-ok

MAKE_ENV=	TEST_POD=Yes
.include <bsd.port.mk>
