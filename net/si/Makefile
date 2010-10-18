# $OpenBSD: Makefile,v 1.4 2010/10/18 18:36:57 espie Exp $

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
WANTLIB =	c pthread
LIB_DEPENDS =	silc,silcclient::devel/silc-toolkit

USE_GROFF =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
