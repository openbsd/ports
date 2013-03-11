# $OpenBSD: Makefile,v 1.3 2013/03/11 11:41:30 espie Exp $

COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.0.1
CATEGORIES =	sysutils
MASTER_SITES =	http://download.rsyslog.com/librelp/
HOMEPAGE =	http://www.librelp.com/

MAINTAINER =	Todd T. Fries <todd@openbsd.org>

SHARED_LIBS +=  relp                      0.1 # 0.1

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		Yes

.include <bsd.port.mk>
