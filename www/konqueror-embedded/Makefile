# $OpenBSD: Makefile,v 1.22 2009/06/22 10:43:58 sthen Exp $

COMMENT=	stand-alone Qt-based web browser
CATEGORIES=	www x11
SHARED_ONLY=	Yes

MODULES=	x11/kde

DATE=		20060121
DISTNAME=	konqueror3-embedded-0.2-${DATE}
EXTRACT_SUFX=	.tar.bz2
EXTRACT_ONLY=	konqueror3-embedded-0.2-${DATE}.tar.bz2

DIST_SUBDIR=	kde
DISTFILES=	konqueror3-embedded-0.2-${DATE}.tar.bz2 kdelibs-3.5.5.tar.bz2:0

PKGNAME=	konqueror-${DATE}p4
HOMEPAGE=	http://www.konqueror.org/embedded.html
MASTER_SITES= 	http://www.cirulla.net/kdenox-snapshots/snapshots/
MASTER_SITES0= 	${MASTER_SITE_KDE:=stable/3.5.5/src/}

SHARED_LIBS=		konqe	0.0
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
MODKDE_VERSION=		3.5.3
CONFIGURE_ARGS=		${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--enable-add-ons=kplaintext
CONFIGURE_ARGS+=	--enable-ftp
CONFIGURE_ARGS+=	--enable-mitshm
CONFIGURE_ARGS+=	--enable-readwrite
CONFIGURE_ARGS+=	--enable-sortdir
CONFIGURE_ARGS+=	--enable-xmlui
CONFIGURE_ARGS+=	--disable-final
CONFIGURE_ARGS+=	--without-arts
CONFIGURE_ARGS+=	--disable-dlopen
CONFIGURE_ARGS+=	--enable-printing
CONFIGURE_ARGS+=	--enable-fontsubs

CONFIGURE_ENV+=	LOCALBASE=${LOCALBASE}
LIB_DEPENDS=	png.>=2::graphics/png \
		jpeg.>=62::graphics/jpeg \
		pcreposix,pcre::devel/pcre

USE_LIBTOOL=	Yes

KONQ=	${PREFIX}/lib/konq-e

FLAVORS=	kiosk
FLAVOR?=

.if ${FLAVOR:L:Mkiosk}
CONFIGURE_ARGS+=-with-gui=kiosk
.endif

post-extract:
	rm ${WRKSRC}/konq-embed/kdesrc/khtml/*.orig
	cd ${WRKDIR} && bzip2 -c -d ${FULLDISTDIR}/kdelibs-3.5.5.tar.bz2|tar xf - kdelibs-3.5.5/dcop
	mv ${WRKDIR}/kdelibs-3.5.5/dcop ${WRKSRC}/konq-embed/kdesrc/dcop

post-build:
	@sed -e s,%PREFIX%,${TRUEPREFIX}, <${FILESDIR}/konq-e >${WRKDIST}/konq-e

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/konq-e/share
.for d in share/apps share/config share/services apps pics
	mv ${PREFIX}/$d ${PREFIX}/lib/konq-e/$d
.endfor
	mv ${PREFIX}/bin/konqueror ${PREFIX}/libexec/konq-e
	${INSTALL_PROGRAM} ${WRKDIST}/konq-e ${PREFIX}/bin

CONFIGURE_ENV=KDECONFIG='/bin/sh ${FILESDIR}/kde-config'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xext c m pthread stdc++ z

.include <bsd.port.mk>
