# $OpenBSD: Makefile,v 1.2 2011/09/17 11:02:07 ajacoutot Exp $

COMMENT =	typical installation of a gnome desktop manager

PKGNAME =	sis-gnome-0.1
REVISION =	0
CATEGORIES =	x11
NO_BUILD =	Yes
DISTFILES =	

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${PREFIX}/bin

.include <bsd.port.mk>
