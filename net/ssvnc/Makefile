# $OpenBSD: Makefile,v 1.5 2009/03/11 21:39:10 sthen Exp $

COMMENT-gui =		enhanced TightVNC client GUI and wrappers
COMMENT-main =		enhanced TightVNC client

V =			1.0.22
DISTNAME =		ssvnc-$V.src
CATEGORIES =		net x11

PKGNAME =		ssvnc-$V
FULLPKGNAME-gui =	ssvnc-$Vp0
FULLPKGNAME-main =	ssvnc-viewer-$V

HOMEPAGE =		http://www.karlrunge.com/x11vnc/ssvnc.html

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ssvnc/}

MULTI_PACKAGES =-main -gui

USE_X11 =	Yes
USE_GMAKE =	Yes

MAKE_ENV =	CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

WRKDIST =	${WRKDIR}/ssvnc-$V

NO_REGRESS =	Yes

MODULES =	x11/tk

WANTLIB-main =		X11 Xext c z ICE SM Xaw Xmu Xp Xpm Xt Xau Xdmcp
LIB_DEPENDS-main =	jpeg.>=62.::graphics/jpeg

WANTLIB-gui =		c crypto
RUN_DEPENDS-gui =	::security/stunnel \
			::devel/desktop-file-utils \
			::net/ssvnc,-main \
			${MODTK_RUN_DEPENDS}

CONFIGURE_STYLE =	imake noman
XMKMF =			xmkmf

VNCSRC =		${WRKSRC}/vnc_unixsrc/
VNCLIB =		${PREFIX}/lib/ssvnc/

SUBST_VARS =		MODTK_BIN

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/ssvnc

do-configure:
	cd ${VNCSRC}/libvncauth; ${XMKMF}
	cd ${VNCSRC}/vncviewer; ${XMKMF}

do-build:
	cd ${VNCSRC}/libvncauth; ${ENV} ${MAKE_ENV} ${MAKE}
	cd ${VNCSRC}/vncviewer; ${ENV} ${MAKE_ENV} ${MAKE}
	cd ${WRKSRC}/vncstorepw; ${ENV} ${MAKE_ENV} ${MAKE}

do-install:
	${INSTALL_PROGRAM_DIR} ${VNCLIB}
	cd ${WRKSRC}/scripts; tar cf - * | tar xf - -C ${VNCLIB}
	${INSTALL_MAN} ${WRKSRC}/man/man1/ssvnc.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/man1/ssvncviewer.1 ${PREFIX}/man/man1/vncviewer.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/ssvnc.desktop ${PREFIX}/share/applications
	${INSTALL_PROGRAM} ${VNCSRC}/vncviewer/vncviewer ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/vncstorepw/vncstorepw ${VNCLIB}
	${INSTALL_PROGRAM} ${WRKSRC}/vncstorepw/ultravnc_dsm_helper ${VNCLIB}
	${INSTALL_DATA} ${WRKSRC}/vncstorepw/lim_accept.so ${VNCLIB}
	${INSTALL_DATA} ${WRKSRC}/vncstorepw/unwrap.so ${VNCLIB}
.for i in ssvnc tsvnc sshvnc
	${WRKSRC}/wr_tool ${PREFIX}/bin/$i ${TRUEPREFIX}/lib/ssvnc/$i
.endfor

.include <bsd.port.mk>
