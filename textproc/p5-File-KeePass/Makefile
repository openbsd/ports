# $OpenBSD: Makefile,v 1.4 2016/03/29 13:34:31 sthen Exp $

COMMENT =	interface to KeePass V1 and V2 database files

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	File-KeePass-2.03
CATEGORIES =	textproc
REVISION =	1

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	security/p5-Crypt-Rijndael \
		textproc/p5-XML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
