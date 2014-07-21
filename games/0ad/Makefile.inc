# $OpenBSD: Makefile.inc,v 1.1.1.1 2014/07/21 01:24:06 bentley Exp $

ONLY_FOR_ARCHS =	amd64 i386

BROKEN-i386 =		base doesn't build due to asm problems

CATEGORIES = 		games

V ?= 			0.0.16

HOMEPAGE = 		http://play0ad.com/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

MASTER_SITES =		http://releases.wildfiregames.com/ \
			${MASTER_SITE_SOURCEFORGE:=zero-ad/}

# GPLv2+, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE_CDROM =  Yes

WRKDIST =		${WRKDIR}/0ad-${V}-alpha
