# $OpenBSD: Makefile,v 1.11 2019/07/12 21:07:46 sthen Exp $

COMMENT =	minimalistic SILC client

DISTNAME =	si-0.3
REVISION =	1
CATEGORIES =	net

# GPLv2/MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://dokucode.de/files/

WANTLIB =	c iconv pthread silc silcclient
LIB_DEPENDS =	converters/libiconv \
		devel/silc-toolkit

NO_TEST =	Yes

.include <bsd.port.mk>
