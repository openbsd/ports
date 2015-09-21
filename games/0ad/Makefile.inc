# $OpenBSD: Makefile.inc,v 1.4 2015/09/21 11:27:08 pascal Exp $

ONLY_FOR_ARCHS =	amd64 i386

CATEGORIES = 		games

V ?= 			0.0.18

HOMEPAGE = 		http://play0ad.com/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=zero-ad/}

# GPLv2+, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE_CDROM =  Yes

WRKDIST =		${WRKDIR}/0ad-${V}-alpha
