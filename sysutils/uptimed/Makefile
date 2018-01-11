# $OpenBSD: Makefile,v 1.5 2018/01/11 19:27:11 rpe Exp $

COMMENT =	keeps a list of uptime records
DISTNAME =	uptimed-0.3.17
CATEGORIES =	sysutils
REVISION =	3

SHARED_LIBS +=	uptimed                   0.0 # 0.0

HOMEPAGE =	https://github.com/rpodgorny/uptimed/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c

MASTER_SITES =	http://podgorny.cz/uptimed/releases/
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
