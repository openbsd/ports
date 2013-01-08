# $OpenBSD: Makefile,v 1.2 2013/01/08 17:36:39 sthen Exp $

COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.0.1
CATEGORIES =	sysutils
MASTER_SITES =	http://download.rsyslog.com/librelp/
HOMEPAGE =	http://www.librelp.com/

MAINTAINER =	Todd T. Fries <todd@openbsd.org>

SHARED_LIBS +=  relp                      0.1 # 0.1

# GPLv3
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		Yes

.include <bsd.port.mk>
