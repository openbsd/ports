# $OpenBSD: Makefile,v 1.9 2010/10/18 18:36:49 espie Exp $

COMMENT =		link advertisement (LLDP/CDP etc) daemon

DISTNAME =		ladvd-0.9.2
CATEGORIES =		net

HOMEPAGE =		http://blinkenlights.nl/software/ladvd/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}

AUTOCONF_VERSION =	2.64
CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ARGS +=	--with-user=_ladvd --with-chroot-dir=/var/empty
USE_GROFF =	Yes

WANTLIB =		c event

# enables regression tests;  GNU configure script enables them
# only if devel/check is available at build time
BUILD_DEPENDS =		::devel/check

.include <bsd.port.mk>
