# $OpenBSD: Makefile,v 1.5 2010/11/19 22:31:38 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		SNMP statistics monitoring system

DISTNAME =		rtg-0.7.4
REVISION =		5
CATEGORIES =		net	
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=rtg/}

HOMEPAGE =		http://rtg.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		m crypto c z pthread fontconfig freetype \
			netsnmp>=6 mysqlclient_r gd jpeg png

MODULES =		converters/libiconv

LIB_DEPENDS =		net/net-snmp \
			databases/mysql \
			graphics/gd \
			graphics/jpeg \
			graphics/png

CONFIGURE_ENV =		LOCALBASE=${LOCALBASE} \
			LDFLAGS=-L${X11BASE}/lib
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.59
USE_GROFF =		Yes

.include <bsd.port.mk>
