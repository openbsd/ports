# $OpenBSD: Makefile,v 1.19 2017/08/23 09:12:33 benoit Exp $

COMMENT =	perl module for parsing nmap XML reports

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Nmap-Parser-1.36
EPOCH =		0
CATEGORIES=	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

HOMEPAGE =	https://github.com/modernistik/Nmap-Parser

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/nmap \
		textproc/p5-XML-Twig>=3.16

.include <bsd.port.mk>
