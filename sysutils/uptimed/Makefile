# $OpenBSD: Makefile,v 1.1.1.1 2013/06/18 05:47:19 rfreeman Exp $

COMMENT =	keeps a list of uptime records
DISTNAME =	uptimed-0.3.17
CATEGORIES =	sysutils

SHARED_LIBS +=	uptimed                   0.0 # 0.0

HOMEPAGE =	http://podgorny.cz/moin/Uptimed

MAINTAINER =	Ryan Freeman <rfreeman@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c

MASTER_SITES =	http://podgorny.cz/uptimed/releases/
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
