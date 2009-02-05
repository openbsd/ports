# $OpenBSD: Makefile,v 1.1.1.1 2009/02/05 22:05:10 simon Exp $

COMMENT =	HTML form creation, rendering and validation framework

MODULES =	cpan
DISTNAME =	HTML-FormFu-0.03007
CATEGORIES =	www textproc

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-Class-Accessor-Chained \
			::devel/p5-Class-C3 \
			::devel/p5-Config-Any \
			::devel/p5-Data-Visitor \
			::devel/p5-Date-Calc \
			::devel/p5-DateTime-Format-Builder \
			::devel/p5-DateTime-Format-Natural \
			::devel/p5-DateTime-Format-Strptime \
			::devel/p5-DateTime-Locale \
			::devel/p5-File-ShareDir \
			::devel/p5-List-MoreUtils \
			::devel/p5-Readonly \
			::devel/p5-Regexp-Copy \
			::devel/p5-Task-Weaken \
			::devel/p5-YAML-Syck \
			::graphics/p5-Captcha-reCAPTCHA \
			::mail/p5-Email-Valid \
			::security/p5-Crypt-CBC \
			::security/p5-Crypt-DES \
			::textproc/p5-Regexp-Common \
			::textproc/p5-Template \
			::www/p5-HTML-Scrubber \
			::www/p5-HTML-TokeParser-Simple \
			::www/p5-libwww

REGRESS_DEPENDS =	::devel/p5-Test-NoWarnings

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
