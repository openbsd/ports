# $OpenBSD: Makefile.inc,v 1.1.1.1 2015/12/22 10:02:45 bentley Exp $

# N.B. cjk is independently versioned
V ?=			2015-09-29
DISTNAME ?=		noto-${NOTO_PROJECT}-${V:S/-//g}

CATEGORIES ?=		fonts

HOMEPAGE ?=		https://www.google.com/get/noto/

MAINTAINER ?=		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# cjk: SIL OFL 1.1
# fonts, emoji: Apache 2.0 (XXX post-2015-09-29 these are relicensed OFL)
PERMIT_PACKAGE_CDROM ?=	Yes

GH_ACCOUNT ?=		googlei18n
GH_PROJECT ?=		noto-${NOTO_PROJECT}
GH_TAGNAME ?=		v$V

NO_BUILD ?=		Yes
NO_TEST ?=		Yes
PKG_ARCH ?=		*

NOTO_INSTALLDIR ?=	${PREFIX}/share/fonts/noto
