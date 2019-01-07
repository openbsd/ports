# $OpenBSD: Makefile,v 1.12 2019/01/07 01:05:15 afresh1 Exp $

COMMENT =	simple perl web app framework

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Dancer-1.3500
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS = 	devel/p5-Hash-Merge-Simple \
		devel/p5-Try-Tiny \
		devel/p5-Module-Runtime \
		mail/p5-MIME-Types \
		www/p5-HTTP-Body \
		www/p5-HTTP-Server-Simple-PSGI

TEST_DEPENDS +=	converters/p5-JSON \
	 	devel/p5-Clone \
		devel/p5-Data-Dump \
		devel/p5-Devel-Hide \
		devel/p5-Test-CPAN-Meta \
		devel/p5-Test-Output \
		devel/p5-Test-NoWarnings \
		devel/p5-YAML \
		net/p5-Test-TCP \
		textproc/p5-Template \
		textproc/p5-Template-Provider-Encoding \
		www/p5-HTTP-CookieJar \
	 	www/p5-Plack

MAKE_ENV += 	TEST_POD=Yes AUTHOR_TESTING=Yes RELEASE_TESTING=Yes

# XXX Upstream has left a .swo file hanging
post-extract:
	@rm ${WRKSRC}/lib/Dancer/.Test.pm.swo

.include <bsd.port.mk>
