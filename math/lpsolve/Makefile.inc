# $OpenBSD: Makefile.inc,v 1.3 2019/07/13 10:59:27 sthen Exp $

V_MAJOR ?=		5.5
V ?=			${V_MAJOR}.2.0

CATEGORIES ?=		math devel
HOMEPAGE ?=		http://lpsolve.sourceforge.net
MAINTAINER ?=		Edd Barrett <edd@openbsd.org>
MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=lpsolve/}

# LGPLv2.1
PERMIT_PACKAGE ?=		Yes
