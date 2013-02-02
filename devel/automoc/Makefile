# $OpenBSD: Makefile,v 1.1.1.1 2013/02/02 09:42:07 zhuk Exp $

CATEGORIES =	devel
COMMENT =	K Desktop Environment, frontend to moc
VERSION =	0.9.88
DISTNAME =	automoc4-${VERSION}
EXTRACT_SUFX =	.tar.bz2
REVISION =	0

# 2-clause BSDL
PERMIT_DISTFILES_CDROM =        Yes
PERMIT_DISTFILES_FTP =          Yes
PERMIT_PACKAGE_CDROM =          Yes
PERMIT_PACKAGE_FTP =            Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/automoc4/${VERSION}/}
DIST_SUBDIR =	kde

WANTLIB =	c m stdc++

MODULES =	x11/kde4
MODKDE4_USE =

.include <bsd.port.mk>
