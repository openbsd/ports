# $OpenBSD: Makefile,v 1.5 2015/03/16 18:07:55 naddy Exp $

COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.0.1
CATEGORIES =	sysutils
MASTER_SITES =	http://download.rsyslog.com/librelp/
HOMEPAGE =	http://www.librelp.com/
REVISION =	0

MAINTAINER =	Todd T. Fries <todd@openbsd.org>

SHARED_LIBS +=  relp                      0.1 # 0.1

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
