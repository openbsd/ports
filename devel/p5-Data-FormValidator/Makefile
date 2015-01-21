# $OpenBSD: Makefile,v 1.12 2015/01/21 14:27:56 sthen Exp $

COMMENT=        validate user input from a constraint object

MODULES=	cpan
DISTNAME=	Data-FormValidator-4.63
REVISION=	0
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	graphics/p5-Image-Size \
		devel/p5-Date-Calc \
		devel/p5-Perl6-Junction \
		misc/p5-File-MMagic \
		mail/p5-Email-Valid \
		mail/p5-MIME-Types \
		textproc/p5-Regexp-Common
TEST_DEPENDS=www/p5-CGI-Simple

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
