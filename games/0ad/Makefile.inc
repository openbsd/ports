ONLY_FOR_ARCHS =	amd64 i386

CATEGORIES = 		games

V ?= 			0.0.26

HOMEPAGE = 		https://play0ad.com/

SITES =			https://releases.wildfiregames.com/ \
			${SITE_SOURCEFORGE:=zero-ad/}

# GPLv2+, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE =	Yes

WRKDIST =		${WRKDIR}/0ad-${V}-alpha
