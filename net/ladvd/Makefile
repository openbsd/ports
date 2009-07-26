# $OpenBSD: Makefile,v 1.4 2009/07/26 10:50:10 kili Exp $

COMMENT =		link advertisement (LLDP/CDP etc) daemon

DISTNAME =		ladvd-0.8
PKGNAME =		${DISTNAME}p0
CATEGORIES =		net

HOMEPAGE =		http://blinkenlights.nl/software/ladvd/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}

AUTOCONF_VERSION =	2.61
CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ARGS +=	--with-user=_ladvd --with-chroot-dir=/var/empty

WANTLIB =		c event

.include <bsd.port.mk>
