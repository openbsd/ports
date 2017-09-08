# $OpenBSD: Makefile.inc,v 1.9 2017/09/08 22:03:55 bentley Exp $

ONLY_FOR_ARCHS =	amd64 i386

CATEGORIES = 		games

V ?= 			0.0.22

HOMEPAGE = 		https://play0ad.com/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

MASTER_SITES =		https://releases.wildfiregames.com/ \
			${MASTER_SITE_SOURCEFORGE:=zero-ad/}

# GPLv2+, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE_CDROM =  Yes

WRKDIST =		${WRKDIR}/0ad-${V}-alpha
