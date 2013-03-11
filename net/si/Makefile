# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:56 espie Exp $

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

USE_GROFF =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
