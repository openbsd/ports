# $OpenBSD: Makefile.inc,v 1.11 2019/07/12 21:07:45 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386

CATEGORIES = 		games

V ?= 			0.0.23b

HOMEPAGE = 		https://play0ad.com/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

MASTER_SITES =		https://releases.wildfiregames.com/ \
			${MASTER_SITE_SOURCEFORGE:=zero-ad/}

# GPLv2+, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE =	Yes

WRKDIST =		${WRKDIR}/0ad-${V}-alpha
