# $OpenBSD: Makefile,v 1.1.1.1 2019/06/09 08:17:29 bentley Exp $

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
PERMIT_PACKAGE_CDROM =   Yes

.include <bsd.port.mk>
