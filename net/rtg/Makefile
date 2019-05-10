# $OpenBSD: Makefile,v 1.17 2019/05/10 21:13:28 jca Exp $

COMMENT =		SNMP statistics monitoring system

DISTNAME =		rtg-0.7.4
REVISION =		13
CATEGORIES =		net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=rtg/}

HOMEPAGE =		http://rtg.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto fontconfig freetype gd iconv jpeg m mysqlclient_r
WANTLIB += netsnmp png pthread tiff webp z

LIB_DEPENDS =		converters/libiconv \
			net/net-snmp \
			databases/mariadb \
			graphics/gd \
			graphics/jpeg \
			graphics/png

CONFIGURE_ENV =		LOCALBASE=${LOCALBASE} \
			LDFLAGS=-L${X11BASE}/lib
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.59

.include <bsd.port.mk>
