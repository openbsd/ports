# $OpenBSD: Makefile,v 1.3 2020/07/03 21:46:06 sthen Exp $

COMMENT =	check the validity of links in an HTML or XHTML document

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	W3C-LinkChecker-4.81
CATEGORIES =	www
REVISION =	0

RUN_DEPENDS =	www/p5-CSS-DOM \
		www/p5-LWP-Protocol-https \
		www/p5-libwww
TEST_DEPENDS =	${RUN_DEPENDS}

# W3C https://www.w3.org/Consortium/Legal/2015/copyright-software-and-document
PERMIT_PACKAGE =	Yes

.include <bsd.port.mk>
