# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:45 sthen Exp $

COMMENT =	interface to KeePass V1 and V2 database files

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	File-KeePass-2.03
CATEGORIES =	textproc
REVISION =	2

# Artistic
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	security/p5-Crypt-Rijndael \
		textproc/p5-XML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
