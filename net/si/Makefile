# $OpenBSD: Makefile,v 1.10 2016/09/13 16:12:14 naddy Exp $

COMMENT =	minimalistic SILC client

DISTNAME =	si-0.3
REVISION =	1
CATEGORIES =	net

# GPLv2/MIT
PERMIT_PACKAGE_CDROM =   Yes

MASTER_SITES =	http://dokucode.de/files/

WANTLIB =	c iconv pthread silc silcclient
LIB_DEPENDS =	converters/libiconv \
		devel/silc-toolkit

NO_TEST =	Yes

.include <bsd.port.mk>
