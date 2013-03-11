# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:43 espie Exp $

COMMENT=	unicode-aware catalyst (old style)

DISTNAME=	Catalyst-Plugin-Unicode-0.93
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-MRO-Compat
TEST_DEPENDS=devel/p5-IO-stringy \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		devel/p5-Test-use-ok

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
