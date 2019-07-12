# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:41 sthen Exp $

COMMENT =	perl module for parsing nmap XML reports

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Nmap-Parser-1.37
EPOCH =		0
CATEGORIES=	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

HOMEPAGE =	https://github.com/modernistik/Nmap-Parser

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	net/nmap \
		textproc/p5-XML-Twig>=3.16

.include <bsd.port.mk>
