# $OpenBSD: Makefile,v 1.3 2014/10/22 13:55:07 jasper Exp $

COMMENT =	keeps a list of uptime records
DISTNAME =	uptimed-0.3.17
CATEGORIES =	sysutils
REVISION =	1

SHARED_LIBS +=	uptimed                   0.0 # 0.0

HOMEPAGE =	http://podgorny.cz/moin/Uptimed

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c

MASTER_SITES =	http://podgorny.cz/uptimed/releases/
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
