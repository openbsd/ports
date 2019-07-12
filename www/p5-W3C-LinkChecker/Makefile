# $OpenBSD: Makefile,v 1.2 2019/07/12 21:07:47 sthen Exp $

COMMENT =	check the validity of links in an HTML or XHTML document

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	W3C-LinkChecker-4.81
CATEGORIES =	www

RUN_DEPENDS =	www/p5-CSS-DOM \
		www/p5-LWP-Protocol-https \
		www/p5-libwww
TEST_DEPENDS =	${RUN_DEPENDS}

# W3C https://www.w3.org/Consortium/Legal/2015/copyright-software-and-document
PERMIT_PACKAGE =	Yes

.include <bsd.port.mk>
