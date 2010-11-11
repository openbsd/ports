# $OpenBSD: Makefile,v 1.5 2010/11/11 17:20:28 espie Exp $

COMMENT =	minimalistic SILC client

DISTNAME =	si-0.3
REVISION =	0
CATEGORIES =	net

# GPLv2/MIT
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MASTER_SITES =	http://dokucode.de/files/

MODULES =	converters/libiconv
WANTLIB =	c pthread silc silcclient
LIB_DEPENDS =	::devel/silc-toolkit

USE_GROFF =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
