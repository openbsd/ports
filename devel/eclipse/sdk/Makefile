# $OpenBSD: Makefile,v 1.49 2009/07/18 15:50:40 naddy Exp $

SHARED_ONLY=		Yes
ONLY_FOR_ARCHS=		amd64 i386

COMMENT-main=		general-purpose, extensible IDE for Java & other langs
COMMENT-swt=		widget toolkit for Java
COMMENT-gnome=		GNOME integration library for swt/eclipse
COMMENT-browser=	HTML Browser Widget library for swt/eclipse

ECLIPSE_VER=		3.2.2
DISTNAME=		eclipse-sourceBuild-srcIncluded-${ECLIPSE_VER}
PKGNAME=		eclipse-sdk-${ECLIPSE_VER}
PKGNAME-main=		eclipse-sdk-${ECLIPSE_VER}p10
PKGNAME-swt=		swt-${ECLIPSE_VER}p1
PKGNAME-gnome=		swt-gnome-${ECLIPSE_VER}p2
PKGNAME-browser=	swt-browser-${ECLIPSE_VER}p1
SHARED_LIBS=		swt-atk-gtk-3236	4.0 \
			swt-awt-gtk-3236	4.0 \
			swt-gtk-3236		4.0 \
			swt-pi-gtk-3236		4.0 \
			swt-cairo-gtk-3236	4.0 \
			swt-gnome-gtk-3236	4.0 \
			swt-mozilla-gtk-3236	4.0 \
			swt-glx-gtk-3236	4.0

CATEGORIES=		devel/eclipse java 

HOMEPAGE=		http://www.eclipse.org/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
# Apache Software License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
# IBM Public License 1.0 (http://oss.software.ibm.com/developerworks/opensource/license10.html)
# Metro Link Public License 1.00 (http://www.opengroup.org/openmotif/supporters/metrolink/license.html)
# Mozilla Public License Version 1.1 (http://www.mozilla.org/MPL/MPL-1.1.html)
# LGPL 2.1 
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_ECLIPSE+=	\
	http://ftp.osuosl.org/pub/eclipse/eclipse/downloads/drops/ \
	http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/ \
	ftp://eclipse.mirrors.tds.net/pub/eclipse.org/eclipse/downloads/drops/ \
	http://eclipse.objectweb.org/downloads/drops/ \
	http://mirror.pacific.net.au/eclipse/eclipse/downloads/drops/ \
	http://download2.eclipse.org/eclipse/downloads/drops/
 
MASTER_SITES=		${MASTER_SITE_ECLIPSE:=R-3.2.2-200702121330/}
EXTRACT_SUFX=		.zip

VMEM_WARNING=		Yes

MODULES=		java devel/gettext
MODJAVA_VER=		1.5+

BUILD_DEPENDS=		::devel/xulrunner,-devel \
			:apache-ant->=1.6.1:devel/apache-ant

USE_GMAKE=		Yes
USE_X11=		Yes
USE_ZIP=		Yes

MULTI_PACKAGES=		-main -swt -gnome -browser

RUN_DEPENDS-main=	::java/javaPathHelper \
			${MODJAVA_RUN_DEPENDS} \
			:swt-browser-${ECLIPSE_VER}:devel/eclipse/sdk,-browser \
			::devel/desktop-file-utils
LIB_DEPENDS-main=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB-main=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
			Xcomposite Xdamage \
			Xrandr Xrender c expat m z fontconfig \
			freetype atk-1.0 glib-2.0 gmodule-2.0 \
			gobject-2.0 glitz png iconv intl \
			pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo \
			pixman-1 gio-2.0

LIB_DEPENDS-swt=	gtk-x11-2.0::x11/gtk+2
WANTLIB-swt=		GL GLU Xtst m atk-1.0 cairo gthread-2.0

RUN_DEPENDS-gnome=	:swt-${ECLIPSE_VER}:devel/eclipse/sdk,-swt
LIB_DEPENDS-gnome=	gnomeui-2::x11/gnome/libgnomeui
WANTLIB-gnome=		gnome-2 gnomevfs-2

RUN_DEPENDS-browser=	:swt-${ECLIPSE_VER}:devel/eclipse/sdk,-swt
LIB_DEPENDS-browser=	xulrunner/gtkembedmoz,xulrunner/xpcom::devel/xulrunner
WANTLIB-browser=	c nspr4 plc4 plds4

MOZILLA_HOME=		${LOCALBASE}/xulrunner
ECLIPSE_WS=		gtk
ECLIPSE_BUILD=		3236
ECLIPSE_OS=		openbsd
.if ${MACHINE_ARCH} == "i386"
ECLIPSE_ARCH=		x86
.else
ECLIPSE_ARCH=		x86_64
.endif

MAKE_ENV=		ECLIPSE_BUILD=${ECLIPSE_BUILD} \
			ECLIPSE_ARCH=${ECLIPSE_ARCH} \
			ECLIPSE_OS=${ECLIPSE_OS} \
			ECLIPSE_WS=${ECLIPSE_WS} \
			JAVA_HOME=${JAVA_HOME} \
			MOZILLA_HOME=${MOZILLA_HOME} \
			CC="${CC}" CXX="${CXX}" \
			LIBswt_atk_gtk_VERSION=${LIBswt-atk-gtk-3236_VERSION} \
			LIBswt_awt_gtk_VERSION=${LIBswt-awt-gtk-3236_VERSION} \
			LIBswt_gtk_VERSION=${LIBswt-gtk-3236_VERSION} \
			LIBswt_pi_gtk_VERSION=${LIBswt-pi-gtk-3236_VERSION} \
			LIBswt_cairo_gtk_VERSION=${LIBswt-cairo-gtk-3236_VERSION} \
			LIBswt_gnome_gtk_VERSION=${LIBswt-gnome-gtk-3236_VERSION} \
			LIBswt_mozilla_gtk_VERSION=${LIBswt-mozilla-gtk-3236_VERSION} \
			LIBswt_glx_gtk_VERSION=${LIBswt-glx-gtk-3236_VERSION}

FAKE_FLAGS=		${MAKE_ENV}

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

SUBST_VARS=		ECLIPSE_ARCH

# Build out openbsd source from linux source
pre-patch:
	@${SETENV} WRKSRC=${WRKSRC} ECLIPSE_WS=${ECLIPSE_WS} \
		sh ${FILESDIR}/prepatch.sh

do-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		./build -os ${ECLIPSE_OS} -ws ${ECLIPSE_WS} -arch ${ECLIPSE_ARCH} -java5home ${JAVA_HOME} -compilelibs

do-install:
	@tar xzf ${WRKBUILD}/result/openbsd-gtk-${ECLIPSE_ARCH}-sdk.tar.gz \
		-C ${PREFIX}
	@sed -e "s+%%ECLIPSE_HOME%%+${TRUEPREFIX}/eclipse+g" \
		-e "s+%%MOZILLA_FIVE_HOME%%+${TRUEPREFIX}/xulrunner+g" \
		${WRKBUILD}/eclipse.in > ${WRKBUILD}/eclipse.tmp
	${INSTALL_SCRIPT} ${WRKBUILD}/eclipse.tmp ${PREFIX}/bin/eclipse
	${INSTALL_PROGRAM} ${WRKBUILD}/launchertmp/eclipse ${PREFIX}/eclipse/eclipse
	${INSTALL_DATA} ${WRKBUILD}/plugins/org.eclipse.swt.gtk.openbsd.${ECLIPSE_ARCH}/libswt-*.so.* \
		${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/
	${INSTALL_DATA} ${WRKBUILD}/eclipse/plugins/org.eclipse.swt.gtk.openbsd.${ECLIPSE_ARCH}_${ECLIPSE_VER}.v${ECLIPSE_BUILD}.jar \
		${PREFIX}/share/java/classes/swt.jar
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@sed -e 's+%%PREFIX%%+${TRUEPREFIX}+' ${FILESDIR}/eclipse.desktop > \
		${PREFIX}/share/applications/eclipse.desktop

.include <bsd.port.mk>
