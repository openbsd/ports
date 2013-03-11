# $OpenBSD: Makefile.inc,v 1.2 2013/03/11 11:23:55 espie Exp $

V_MAJOR ?=		5.5
V ?=			${V_MAJOR}.2.0

CATEGORIES ?=		math devel
HOMEPAGE ?=		http://lpsolve.sourceforge.net
MAINTAINER ?=		Edd Barrett <edd@openbsd.org>
MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=lpsolve/}

# LGPLv2.1
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_FTP ?=		Yes
