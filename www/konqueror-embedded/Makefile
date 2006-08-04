# $OpenBSD: Makefile,v 1.14 2006/08/04 00:10:42 espie Exp $

COMMENT='stand-alone Qt-based web browser'
CATEGORIES=www x11

MODULES=	x11/qt2

DATE=	20030705
DISTNAME=konqueror-embedded-snapshot-${DATE}
PKGNAME=konqueror-${DATE}
HOMEPAGE=http://www.konqueror.org/embedded.html
MASTER_SITES= http://devel-home.kde.org/~hausmann/snapshots/

MAINTAINER=	Brad Smith <brad@openbsd.org>

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.57
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include/libpng:${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--enable-add-ons=kplaintext
CONFIGURE_ARGS+=	--enable-ftp
CONFIGURE_ARGS+=	--enable-mitshm
CONFIGURE_ARGS+=	--enable-readwrite
CONFIGURE_ARGS+=	--enable-sortdir
CONFIGURE_ARGS+=	--enable-xmlui
CONFIGURE_ARGS+=	--disable-dlopen
CONFIGURE_ARGS+=	--disable-debug

LIB_DEPENDS=	png.>=2::graphics/png \
		jpeg.>=62::graphics/jpeg \
		pcreposix,pcre::devel/pcre

MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

KONQ=	${PREFIX}/lib/konq-e

FLAVORS=	kiosk
FLAVOR?=

.if ${FLAVOR:L:Mkiosk}
CONFIGURE_ARGS+=-with-gui=kiosk
.endif

# .orig file in the distfile
post-extract:
	@rm -f konq-embed/kdesrc/khtml/xml/dom_docimpl.cpp.orig

post-build:
	@sed -e s,%PREFIX%,${TRUEPREFIX}, <${FILESDIR}/konq-e >${WRKDIR}/konq-e

post-install:
	${INSTALL_DATA_DIR} ${KONQ}/share/apps/khtml/css \
		${KONQ}/share/apps/kplaintextpart \
		${KONQ}/share/apps/kssl/caroot \
		${KONQ}/share/apps/konq-embed/actions \
		${KONQ}/pics ${KONQ}/apps/Applications \
		${KONQ}/share/config ${KONQ}/share/services
	@mv -f ${PREFIX}/bin/konqueror ${PREFIX}/libexec/konq-e
.for i in apps/Applications/konqueror.desktop pics/konqueror.png \
share/apps/khtml/css/html4.css share/apps/kplaintextpart/kplaintextpart.rc \
share/apps/kssl/caroot/ca-bundle.crt share/config/charsets \
share/config/khtmlrc share/services/kplaintextpart.desktop \
share/apps/konq-embed/konqe.rc
	@mv -f ${PREFIX}/$i ${KONQ}/$i
.endfor
	@mv -f ${PREFIX}/share/apps/konq-embed/actions/* \
		${KONQ}/share/apps/konq-embed/actions
	${INSTALL_SCRIPT} ${WRKDIR}/konq-e ${PREFIX}/bin

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		ICE SM X11 Xext c m stdc++ z

.include <bsd.port.mk>
