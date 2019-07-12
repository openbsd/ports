# $OpenBSD: Makefile,v 1.7 2019/07/12 21:07:46 sthen Exp $

COMMENT =	cross-platform password manager

V =		1.5.3.7
GH_ACCOUNT =	zdia
GH_PROJECT =	gorilla
GH_TAGNAME =	v${V}
DISTNAME =	password-gorilla-${V}
CATEGORIES =	security

HOMEPAGE =	http://wiki.github.com/zdia/gorilla/

# GPLv2
PERMIT_PACKAGE =	Yes

USE_X11 =	Yes
MODULES =	x11/tk

RUN_DEPENDS =	devel/itcl \
		devel/tcllib \
		devel/tklib \
		${MODTK_RUN_DEPENDS}

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

WRKSRC =	${WRKDIST}/sources

GORILLASTUFF =	blowfish gorilla.tcl help.txt isaac.tcl modules msgs pics \
		pwsafe twofish viewhelp.tcl

post-extract:
	rm ${WRKSRC}/twofish/f32-Darwin-x86.dylib \
	   ${WRKSRC}/twofish/f32-Linux-x86.so \
	   ${WRKSRC}/twofish/f32-Linux-x86_64.so \
           ${WRKSRC}/twofish/f32-Windows-x86.dll

do-install:
	${MODTCL_WISH_ADJ} ${WRKSRC}/gorilla.tcl
	${SUBST_CMD} ${WRKSRC}/gorilla.tcl
	${INSTALL_DATA_DIR} ${PREFIX}/lib/password-gorilla/
	cp -R ${GORILLASTUFF:%=${WRKSRC}/%} ${PREFIX}/lib/password-gorilla/
	${SUBST_PROGRAM} ${FILESDIR}/gorilla ${PREFIX}/bin/gorilla

.include <bsd.port.mk>
