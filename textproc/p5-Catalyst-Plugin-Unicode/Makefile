# $OpenBSD: Makefile,v 1.9 2012/04/08 22:04:35 sthen Exp $

COMMENT=	unicode-aware catalyst (old style)

DISTNAME=	Catalyst-Plugin-Unicode-0.93
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-MRO-Compat
REGRESS_DEPENDS=devel/p5-IO-stringy \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		devel/p5-Test-use-ok

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
