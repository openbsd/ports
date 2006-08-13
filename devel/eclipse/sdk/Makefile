# $OpenBSD: Makefile,v 1.20 2006/08/13 16:11:58 kurt Exp $

ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		"general-purpose, extensible IDE for Java & other langs"
COMMENT-gnome=		"gnome integration library for eclipse"
COMMENT-mozilla=	"mozilla integration library for eclipse HTML Browser Widget"

ECLIPSE_VER=		3.2
DISTNAME=		eclipse-sourceBuild-srcIncluded-${ECLIPSE_VER}
PKGNAME=		eclipse-sdk-${ECLIPSE_VER}p2
PKGNAME-gnome=		eclipse-sdk-gnome-${ECLIPSE_VER}p2
PKGNAME-mozilla=	eclipse-sdk-mozilla-${ECLIPSE_VER}p2
SHARED_LIBS=		swt-atk-gtk-3232	3.0 \
			swt-cde-gtk-3232	3.0 \
			swt-awt-gtk-3232	3.0 \
			swt-gtk-3232		3.0 \
			swt-pi-gtk-3232		3.0 \
			swt-cairo-gtk-3232	3.0 \
			swt-gnome-gtk-3232	3.0 \
			swt-mozilla-gtk-3232	3.0 \
			swt-glx-gtk-3232	3.0

CATEGORIES=		devel/eclipse java 

HOMEPAGE=		http://www.eclipse.org/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
# Apache Software License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
# IBM Public License 1.0 (http://oss.software.ibm.com/developerworks/opensource/license10.html)
# Metro Link Public License 1.00 (http://www.opengroup.org/openmotif/supporters/metrolink/license.html)
# Mozilla Public License Version 1.1 (http://www.mozilla.org/MPL/MPL-1.1.html)
# LGPL 2.1 
PERMIT_PACKAGE_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_ECLIPSE+=	\
	http://ftp.osuosl.org/pub/eclipse/eclipse/downloads/drops/ \
	http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/ \
	ftp://eclipse.mirrors.tds.net/pub/eclipse.org/eclipse/downloads/drops/ \
	http://eclipse.objectweb.org/downloads/drops/ \
	http://mirror.pacific.net.au/eclipse/eclipse/downloads/drops/ \
	http://download2.eclipse.org/eclipse/downloads/drops/
 
MASTER_SITES=		${MASTER_SITE_ECLIPSE:=R-3.2-200606291905/}
EXTRACT_SUFX=		.zip

VMEM_WARNING=		Yes

MODULES=		java
MODJAVA_VER=		1.5+

BUILD_DEPENDS=		:mozilla-devel->=1.7.11:www/mozilla,-devel \
			:apache-ant->=1.6.1:devel/apache-ant \
			:pkgconfig-*:devel/pkgconfig

LIB_DEPENDS=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

USE_GMAKE=		Yes
USE_X11=		Yes

MULTI_PACKAGES=		-gnome -mozilla
SUBPACKAGE?=

GNOME_LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui

MOZILLA_LIB_DEPENDS=	mozilla/xpcom,mozilla/gtkembedmoz,mozilla/nspr4,mozilla/plc4,mozilla/plds4:mozilla->=1.7.11:www/mozilla

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-gnome"
RUN_DEPENDS=		:${PKGNAME}:devel/eclipse/sdk
LIB_DEPENDS=		${GNOME_LIB_DEPENDS}
WANTLIB=		gnome-2 gnomevfs-2
. elif ${SUBPACKAGE} == "-mozilla"
RUN_DEPENDS=		:${PKGNAME}:devel/eclipse/sdk
LIB_DEPENDS=		${MOZILLA_LIB_DEPENDS}
. else
RUN_DEPENDS=		::java/javaPathHelper
MODULES+=		devel/gettext
WANTLIB=		GL GLU X11 Xtst c m fontconfig \
			freetype atk-1.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 gthread-2.0.0.0 pango-1.0.0.0 \
			pangoft2-1.0.0.0 pangocairo-1.0.0.0 cairo
. endif
.else
MODULES+=		devel/gettext
. if ${MULTI_PACKAGES:M-gnome}
LIB_DEPENDS+=		${GNOME_LIB_DEPENDS}
. endif
. if ${MULTI_PACKAGES:M-mozilla}
LIB_DEPENDS+=		${MOZILLA_LIB_DEPENDS}
. endif
.endif

MOZILLA_HOME=		${LOCALBASE}/mozilla
ECLIPSE_WS=		gtk
ECLIPSE_BUILD=		3232
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
			LIBswt_atk_gtk_VERSION=${LIBswt-atk-gtk-3232_VERSION} \
			LIBswt_cdt_gtk_VERSION=${LIBswt-cdt-gtk-3232_VERSION} \
			LIBswt_awt_gtk_VERSION=${LIBswt-awt-gtk-3232_VERSION} \
			LIBswt_gtk_VERSION=${LIBswt-gtk-3232_VERSION} \
			LIBswt_pi_gtk_VERSION=${LIBswt-pi-gtk-3232_VERSION} \
			LIBswt_cairo_gtk_VERSION=${LIBswt-cairo-gtk-3232_VERSION} \
			LIBswt_gnome_gtk_VERSION=${LIBswt-gnome-gtk-3232_VERSION} \
			LIBswt_mozilla_gtk_VERSION=${LIBswt-mozilla-gtk-3232_VERSION} \
			LIBswt_glx_gtk_VERSION=${LIBswt-glx-gtk-3232_VERSION}

FAKE_FLAGS=		${MAKE_ENV}

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

SUBST_VARS=		ECLIPSE_ARCH

# Build out openbsd source from linux source
pre-patch:
	@exec ${SETENV} WRKSRC=${WRKSRC} ECLIPSE_WS=${ECLIPSE_WS} \
		${SCRIPTDIR}/prepatch.sh

do-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		./build -os ${ECLIPSE_OS} -ws ${ECLIPSE_WS} -arch ${ECLIPSE_ARCH} -java5home ${JAVA_HOME} -compilelibs

do-install:
	@tar xzf ${WRKBUILD}/result/${ECLIPSE_OS}-${ECLIPSE_WS}-${ECLIPSE_ARCH}-sdk.tar.gz \
		-C ${PREFIX}
	@sed -e "s+%%ECLIPSE_HOME%%+${TRUEPREFIX}/eclipse+g" \
		-e "s+%%MOZILLA_FIVE_HOME%%+${TRUEPREFIX}/mozilla+g" \
		${WRKBUILD}/eclipse.in > ${WRKBUILD}/eclipse.tmp
	${INSTALL_SCRIPT} ${WRKBUILD}/eclipse.tmp $(PREFIX)/bin/eclipse
	${INSTALL_PROGRAM} ${WRKBUILD}/launchertmp/eclipse ${PREFIX}/eclipse/eclipse
	${INSTALL_DATA} ${WRKBUILD}/plugins/org.eclipse.swt.gtk.openbsd.${ECLIPSE_ARCH}/libswt-*.so.* ${PREFIX}/lib

.include <bsd.port.mk>
