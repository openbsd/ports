# $OpenBSD: Makefile,v 1.2 2008/09/22 22:32:26 sthen Exp $

COMMENT =		LLDP/CDP sender for UNIX

DISTNAME =		ladvd-0.6.1
CATEGORIES =		net

HOMEPAGE =		http://blinkenlights.nl/software/ladvd/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-user=_ladvd

WANTLIB =		c

.include <bsd.port.mk>
