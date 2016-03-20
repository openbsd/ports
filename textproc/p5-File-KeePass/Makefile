# $OpenBSD: Makefile,v 1.3 2016/03/20 19:57:05 naddy Exp $

COMMENT =	interface to KeePass V1 and V2 database files

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	File-KeePass-2.03
CATEGORIES =	textproc
REVISION =	0

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	security/p5-Crypt-Rijndael
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
