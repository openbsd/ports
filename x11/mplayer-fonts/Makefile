# $OpenBSD: Makefile,v 1.11 2003/06/12 14:32:47 espie Exp $

COMMENT='subtitle font for mplayer'
CATEGORIES=x11
BUILD_DEPENDS=:mplayer-fontmaker-*:x11/mplayer-fontmaker
RUN_DEPENDS=:mplayer-*:x11/mplayer

FLAVORS=luxi_sans luxi_sans_bold luxi_sans_italic comic
FLAVOR?=luxi_sans

DIR=${X11BASE}/lib/X11/fonts/TTF
TTF=ttf

.if ${FLAVOR:L:Mluxi_sans}
NAME=luxi_sans
FONT=luxisr
.elif ${FLAVOR:L:Mluxi_sans_bold}
NAME=luxi_sans_bold
FONT=luxisb
.elif ${FLAVOR:L:Mluxi_sans_italic}
NAME=luxi_sans_italic
FONT=luxisri
.endif

DISTFILES=
EXTRACT_ONLY=
DISTNAME=mplayer-font-0.90rc4
FULLPKGNAME=mplayer-${NAME}-0.90rc4

do-build:
	cd ${WRKBUILD} && mksubfont ${DIR}/${FONT}.${TTF}

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
