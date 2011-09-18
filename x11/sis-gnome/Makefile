# $OpenBSD: Makefile,v 1.3 2011/09/18 20:24:44 pirofti Exp $

COMMENT =	typical installation of a gnome desktop manager

PKGNAME =	sis-gnome-0.1
REVISION =	1
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
	${INSTALL_SCRIPT} ${FILESDIR}/sis-install.sh ${PREFIX}/bin

.include <bsd.port.mk>
