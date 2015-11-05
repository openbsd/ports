# $OpenBSD: Makefile,v 1.13 2015/11/05 19:08:57 jca Exp $

COMMENT=        validate user input from a constraint object

MODULES=	cpan
DISTNAME=	Data-FormValidator-4.63
REVISION=	1
CATEGORIES=     devel

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
