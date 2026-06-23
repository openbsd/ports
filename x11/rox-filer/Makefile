COMMENT=	GTK+-2 file manager with desktop features

# see also https://github.com/dimkr/literocks
GH_ACCOUNT=	jun7
GH_PROJECT=	rox-filer
GH_COMMIT=	c5de8d8356fd0eaeff5a34b67387704422b8c010
REVISION=	0

DISTNAME=	rox-filer-2.11pl20230717
CATEGORIES=	x11

HOMEPAGE=	https://rox.sourceforge.net/desktop/ROX-Filer

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 xml2 z

CONFIGURE_ARGS=	--enable-xattr=no
SEPARATE_BUILD=	Yes
ALL_TARGET=	ROX-Filer
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf no-autoheader
AUTOCONF_VERSION= 2.69

DEBUG_PACKAGES=	${BUILD_PACKAGES}

BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/docbook-xsl \
		textproc/intltool \
		textproc/libxml \
		textproc/libxslt
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info
LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+2

NO_TEST=	Yes

INSTDATA=	AppRun Help Messages Options.xml ROX images style.css \
		subclasses .DirIcon
WRKSRC=		${WRKDIST}/ROX-Filer/src
MAKE_ENV=	CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		CPPFLAGS="-I${X11BASE}/include" \

pre-configure:
	@perl -pi -e 's,/usr/local/share/Choices,${PREFIX}/share/rox/Choices,g' \
		${WRKSRC}/choices.c

post-build:
	${MAKE_PROGRAM} -C ${WRKSRC}/Docs
	cd ${WRKSRC}/po; ./dist

do-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/rox/ROX-Filer \
		${PREFIX}/share/applications/ \
		${PREFIX}/share/rox/Choices/MIME-types
	${INSTALL_DATA} ${WRKDIST}/rox.desktop ${PREFIX}/share/applications/
	${INSTALL_MAN} ${WRKDIST}/rox.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKDIST}/rox.1 ${PREFIX}/man/man1/ROX-Filer.1
	${INSTALL_SCRIPT} ${WRKDIST}/Choices/MIME-types/* \
		${PREFIX}/share/rox/Choices/MIME-types
	${INSTALL_PROGRAM} ${WRKDIST}/ROX-Filer/ROX-Filer ${PREFIX}/rox/ROX-Filer
.for i in ${INSTDATA}
	@cp -R ${WRKDIST}/ROX-Filer/$i ${PREFIX}/rox/ROX-Filer
.endfor
	@echo '#!/bin/sh' > ${PREFIX}/bin/rox
	@echo 'exec ${TRUEPREFIX}/rox/ROX-Filer/AppRun "$$@"' >> ${PREFIX}/bin/rox
	@chmod ugo+rx ${PREFIX}/bin/rox

.include <bsd.port.mk>
