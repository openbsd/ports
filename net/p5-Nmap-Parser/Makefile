# $OpenBSD: Makefile,v 1.20 2019/05/06 15:44:56 benoit Exp $

COMMENT =	perl module for parsing nmap XML reports

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Nmap-Parser-1.37
EPOCH =		0
CATEGORIES=	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

HOMEPAGE =	https://github.com/modernistik/Nmap-Parser

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/nmap \
		textproc/p5-XML-Twig>=3.16

.include <bsd.port.mk>
