# $OpenBSD: Makefile,v 1.18 2002/04/19 12:43:56 wilfried Exp $

COMMENT=		'sound server for Window Maker'

DISTNAME=		WSoundServer-0.4.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		audio
NEED_VERSION=		1.513

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://shadowmere.student.utwente.nl/pub/WindowMaker/

PATCH_LIST=		${PORTSDIR}/infrastructure/patches/patch-lt1.3.0-ltconfig \
			${PORTSDIR}/infrastructure/patches/patch-lt1.3.0-ltmain_sh \
			patch-*

RUN_DEPENDS=		:windowmaker-*:x11/windowmaker
LIB_DEPENDS=		wraster.4::x11/windowmaker \
			PropList.2::devel/libproplist \
			audiofile::devel/libaudiofile \
			dockapp::devel/libdockapp

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --enable-static

FLAVORS=		esd
FLAVOR?=

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=		esd::audio/esound
CONFIGURE_ARGS+=	--enable-esd
.else
CONFIGURE_ARGS+=	--disable-esd
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wsoundserver
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wsoundserver
	${INSTALL_DATA_DIR} ${PREFIX}/share/WindowMaker/Defaults/WindowMaker
	@sed -e s,@PREFIX@,${TRUEPREFIX},g < \
		${FILESDIR}/WMSound > ${WRKBUILD}/WMSound
	${INSTALL_DATA} ${WRKBUILD}/WMSound ${PREFIX}/share/WindowMaker/Defaults/WindowMaker/WMSound

.include <bsd.port.mk>
