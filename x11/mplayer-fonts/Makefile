# $OpenBSD: Makefile,v 1.7 2002/11/13 18:03:49 espie Exp $

COMMENT='subtitle font for mplayer'
CATEGORIES=x11
BUILD_DEPENDS=:mplayer-fontmaker-*:x11/mplayer-fontmaker
RUN_DEPENDS=:mplayer-*:x11/mplayer

FLAVORS=luxi-sans luxi-sans-bold luxi-sans-italic
FLAVOR?=luxi-sans

DIR=${X11BASE}/lib/X11/fonts/TTF
.if ${FLAVOR:L:Mluxi-sans}
NAME=luxi-sans
FONT=luxisr
.elif ${FLAVOR:L:Mluxi-sans-bold}
NAME=luxi-sans-bold
FONT=luxisb
.elif ${FLAVOR:L:Mluxi-sans-italic}
NAME=luxi-sans-italic
FONT=luxisri
.endif

DISTFILES=
EXTRACT_ONLY=
DISTNAME=mplayer-font-0.90pre10
FULLPKGNAME=mplayer-${NAME}-0.90pre10

do-build:
	cd ${WRKBUILD} && mksubfont ${DIR}/${FONT}.ttf

NO_REGRESS=Yes

FILES=ISO-8859-1-a.raw ISO-8859-1-b.raw font.desc \
	osd-encoding-a.raw osd-encoding-b.raw

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mplayer/${FONT}
	cd ${WRKBUILD}/${FONT} && ${INSTALL_DATA} ${FILES} ${PREFIX}/share/mplayer/${FONT}

PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes

SUBST_VARS+=FONT

.include <bsd.port.mk>
