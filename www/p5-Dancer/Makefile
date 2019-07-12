# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:52 sthen Exp $

COMMENT =	simple perl web app framework

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Dancer-1.3512
CATEGORIES =	www

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Hash-Merge-Simple \
		devel/p5-Module-Runtime \
		devel/p5-Try-Tiny \
		mail/p5-MIME-Types \
		www/p5-HTTP-Body \
		www/p5-HTTP-Date \
		www/p5-HTTP-Message \
		www/p5-HTTP-Server-Simple-PSGI \
		www/p5-URI

TEST_DEPENDS =	converters/p5-JSON>=2.90 \
		devel/p5-Clone \
		devel/p5-Data-Dump \
		devel/p5-Devel-Hide \
		devel/p5-Test-CPAN-Meta \
		devel/p5-Test-NoWarnings \
		devel/p5-Test-Output \
		devel/p5-YAML \
		textproc/p5-Template \
		textproc/p5-Template-Provider-Encoding \
		www/p5-HTTP-CookieJar>=0.008 \
		www/p5-Plack

MAKE_ENV +=	TEST_POD=Yes AUTHOR_TESTING=Yes RELEASE_TESTING=Yes


.include <bsd.port.mk>
