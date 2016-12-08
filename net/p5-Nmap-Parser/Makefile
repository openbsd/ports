# $OpenBSD: Makefile,v 1.17 2016/12/08 12:00:40 benoit Exp $

COMMENT =	perl module for parsing nmap XML reports

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Nmap-Parser-1.33
EPOCH =		0
CATEGORIES=	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

HOMEPAGE =	https://github.com/modernistik/Nmap-Parser

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/nmap \
		textproc/p5-XML-Twig>=3.16

.include <bsd.port.mk>
