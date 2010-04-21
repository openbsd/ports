# $OpenBSD: Makefile,v 1.5 2010/04/21 22:22:12 alek Exp $

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

BUILD_DEPENDS =		::devel/check

.include <bsd.port.mk>
