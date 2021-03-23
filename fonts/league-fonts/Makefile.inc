# $OpenBSD: Makefile.inc,v 1.2 2021/03/23 07:17:04 bentley Exp $

PKGNAME ?=	${LEAGUE_FONT}-$V

CATEGORIES ?=	fonts

HOMEPAGE ?=	https://www.theleagueofmoveabletype.com/${LEAGUE_FONT}

MAINTAINER ?=	Anthony J. Bentley <anthony@anjbe.name>

# SIL OFL 1.1
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=	https://github.com/theleagueof/${LEAGUE_FONT}/releases/download/$V/

EXTRACT_SUFX ?=	.tar.xz

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

PKG_ARCH ?=	*

FONTDIR ?=	${PREFIX}/share/fonts/league-fonts
