ONLY_FOR_ARCHS =	amd64 i386

CATEGORIES = 		games

V ?= 			0.0.25b

HOMEPAGE = 		https://play0ad.com/

MASTER_SITES =		https://releases.wildfiregames.com/ \
			${MASTER_SITE_SOURCEFORGE:=zero-ad/}

# GPLv2+, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE =	Yes

WRKDIST =		${WRKDIR}/0ad-${V}-alpha
