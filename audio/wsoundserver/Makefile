# $OpenBSD: Makefile,v 1.2 2001/01/17 16:13:29 naddy Exp $

DISTNAME=	WSoundServer-0.4.0
PKGNAME=	${DISTNAME:L}
CATEGORIES=	audio
NEED_VERSION=	1.336
MASTER_SITES=	ftp://shadowmere.student.utwente.nl/pub/WindowMaker/
HOMEPAGE=	http://shadowmere.student.utwente.nl/

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	PropList.2::devel/libproplist \
		audiofile::devel/libaudiofile \
		dockapp:devel/libdockapp
RUN_DEPENDS=	wmaker::x11/windowmaker

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED} --enable-static

FLAVORS=	esd
FLAVOR?=

.if ${FLAVOR:L} == "esd"
LIB_DEPENDS+= esd::audio/esound
CONFIGURE_ARGS+= --enable-esd
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wsoundserver
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wsoundserver
	${INSTALL_DATA_DIR} ${PREFIX}/share/WindowMaker/Defaults/WindowMaker
	sed -e s,@PREFIX@,${TRUEPREFIX},g <${FILESDIR}/WMSound >${WRKBUILD}/WMSound
	${INSTALL_DATA} ${WRKBUILD}/WMSound ${PREFIX}/share/WindowMaker/Defaults/WindowMaker/WMSound

.include <bsd.port.mk>
