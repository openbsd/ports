# $OpenBSD: Makefile,v 1.9 2015/01/22 18:41:16 naddy Exp $

COMMENT =	minimalistic SILC client

DISTNAME =	si-0.3
REVISION =	1
CATEGORIES =	net

# GPLv2/MIT
PERMIT_PACKAGE_CDROM =   Yes

MASTER_SITES =	http://dokucode.de/files/

MODULES =	converters/libiconv
WANTLIB =	c pthread silc silcclient
LIB_DEPENDS =	devel/silc-toolkit

NO_TEST =	Yes

.include <bsd.port.mk>
