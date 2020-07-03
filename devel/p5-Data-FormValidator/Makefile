# $OpenBSD: Makefile,v 1.17 2020/07/03 21:44:46 sthen Exp $

COMMENT=	validate user input from a constraint object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Data-FormValidator-4.88
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	graphics/p5-Image-Size \
		devel/p5-Date-Calc \
		misc/p5-File-MMagic \
		mail/p5-Email-Valid \
		mail/p5-MIME-Types \
		textproc/p5-Regexp-Common
TEST_DEPENDS=	textproc/p5-Template \
		www/p5-CGI \
		www/p5-CGI-Simple

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
