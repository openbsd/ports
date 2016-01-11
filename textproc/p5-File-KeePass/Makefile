# $OpenBSD: Makefile,v 1.2 2016/01/11 10:04:51 ajacoutot Exp $

COMMENT =	interface to KeePass V1 and V2 database files

MODULES =	cpan

DISTNAME =	File-KeePass-2.03
CATEGORIES =	textproc
REVISION =	0

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	security/p5-Crypt-Rijndael
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
