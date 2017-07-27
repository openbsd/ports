# $OpenBSD: Makefile,v 1.7 2017/07/27 09:34:37 sthen Exp $

CATEGORIES =	devel
COMMENT =	K Desktop Environment, frontend to moc
VERSION =	0.9.88
DISTNAME =	automoc4-${VERSION}
EXTRACT_SUFX =	.tar.bz2
REVISION =	5

# 2-clause BSDL
PERMIT_PACKAGE_CDROM =          Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/automoc4/${VERSION}/}
DIST_SUBDIR =	kde

WANTLIB =	c m pthread
WANTLIB += ${COMPILER_LIBCXX}

MODULES =	x11/kde4
MODKDE4_USE =

.include <bsd.port.mk>
