# $OpenBSD: Makefile,v 1.3 2010/10/18 18:36:57 espie Exp $

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

WANTLIB =		m crypto c z pthread fontconfig freetype

MODULES =		converters/libiconv

LIB_DEPENDS =		netsnmp.>=6::net/net-snmp \
			mysqlclient_r::databases/mysql \
			gd::graphics/gd \
			jpeg::graphics/jpeg \
			png::graphics/png

CONFIGURE_ENV =		LOCALBASE=${LOCALBASE} \
			LDFLAGS=-L${X11BASE}/lib
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.59
USE_GROFF =	Yes

.include <bsd.port.mk>
