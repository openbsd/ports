# $OpenBSD: Makefile,v 1.12 2020/07/03 21:46:00 sthen Exp $

COMMENT =	HTML form creation, rendering and validation framework

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	HTML-FormFu-2.07
CATEGORIES =	www textproc
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =		devel/p5-File-ShareDir-Install>=0.06

RUN_DEPENDS =		converters/p5-JSON-MaybeXS \
			devel/p5-Class-Accessor-Chained \
			devel/p5-Clone>=0.31 \
			devel/p5-Config-Any>=0.18 \
			devel/p5-Data-Visitor>=0.26 \
			devel/p5-Date-Calc \
			devel/p5-DateTime>=0.54 \
			devel/p5-DateTime-Format-Builder>=0.7901 \
			devel/p5-DateTime-Format-Natural \
			devel/p5-DateTime-Format-Strptime>=1.20 \
			devel/p5-DateTime-Locale>=0.45 \
			devel/p5-File-ShareDir \
			devel/p5-Hash-Flatten \
			devel/p5-List-MoreUtils \
			devel/p5-MRO-Compat \
			devel/p5-Moose>=1.0 \
			devel/p5-MooseX-Aliases \
			devel/p5-MooseX-Attribute-Chained>=1.0.2 \
			devel/p5-Path-Class \
			devel/p5-Readonly \
			devel/p5-Task-Weaken \
			devel/p5-YAML-XS \
			graphics/p5-Captcha-reCAPTCHA \
			mail/p5-Email-Valid \
			security/p5-Crypt-CBC \
			security/p5-Crypt-DES \
			textproc/p5-Number-Format \
			textproc/p5-Regexp-Common \
			textproc/p5-Template \
			www/p5-HTML-Scrubber \
			www/p5-HTML-TokeParser-Simple>=3.14 \
			www/p5-HTTP-Message>=1.64 \
			www/p5-libwww

TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Memory-Cycle \
			devel/p5-Test-RequiresInternet \
			textproc/p5-Regexp-Assemble \
			www/p5-CGI>=3.37 \
			www/p5-CGI-Simple

.include <bsd.port.mk>
