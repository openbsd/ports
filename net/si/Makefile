# $OpenBSD: Makefile,v 1.2 2009/01/10 02:04:28 sthen Exp $

COMMENT =	minimalistic SILC client

DISTNAME =	si-0.3
PKGNAME =	${DISTNAME}p0
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

NO_REGRESS =	Yes

.include <bsd.port.mk>
