# $OpenBSD: Makefile,v 1.1.1.1 2008/12/08 11:23:08 bernd Exp $

COMMENT =	minimalistic SILC client

DISTNAME =	si-0.3
CATEGORIES =	net

# GPLv2/MIT
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MASTER_SITES =	http://dokucode.de/files/

MODULES =	converters/libiconv
WANTLIB =	c
LIB_DEPENDS =	silc,silcclient::devel/silc-toolkit

NO_REGRESS =	Yes

.include <bsd.port.mk>
