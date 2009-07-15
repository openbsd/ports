# $OpenBSD: Makefile,v 1.3 2009/07/15 08:51:35 weerd Exp $

COMMENT =		link advertisement (LLDP/CDP etc) daemon

DISTNAME =		ladvd-0.8
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
CONFIGURE_ARGS +=	--with-user=_ladvd --with-chroot-dir=/var/empty

WANTLIB =		c event

.include <bsd.port.mk>
