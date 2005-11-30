# $OpenBSD: Makefile,v 1.11 2005/11/30 18:34:25 kurt Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		"general-purpose, extensible IDE for Java & other langs"
COMMENT-gnome=		"gnome integration library for eclipse"
COMMENT-mozilla=	"mozilla integration library for eclipse HTML Browser Widget"

ECLIPSE_VER=		3.1
DISTNAME=		eclipse-sourceBuild-srcIncluded-${ECLIPSE_VER}
PKGNAME=		eclipse-sdk-${ECLIPSE_VER}p3
PKGNAME-gnome=		eclipse-sdk-gnome-${ECLIPSE_VER}p3
PKGNAME-mozilla=	eclipse-sdk-mozilla-${ECLIPSE_VER}p3
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
	ftp://ftp.cse.buffalo.edu/pub/Eclipse/eclipse/downloads/drops/ \
	http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/ \
	ftp://eclipse.mirrors.tds.net/pub/eclipse.org/eclipse/downloads/drops/ \
	http://eclipse.objectweb.org/downloads/drops/ \
	http://mirror.pacific.net.au/eclipse/eclipse/downloads/drops/ \
	ftp://download.eclipse.org/ \
	ftp://download2.eclipse.org/

MASTER_SITES=		${MASTER_SITE_ECLIPSE:=R-3.1-200506271435/}
EXTRACT_SUFX=		.zip

VMEM_WARNING=		Yes

MODULES=		java
MODJAVA_VER=		1.4+

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
MODULES+=		devel/gettext
WANTLIB=		X11 Xtst atk-1.0.0.0 c cairo fontconfig \
			freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 gthread-2.0.0.0 m pango-1.0.0.0 \
			pangocairo-1.0.0.0 pangoft2-1.0.0.0
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
ECLIPSE_BUILD=		3138
ECLIPSE_COREVER=	3.1.0
ECLIPSE_OS=		openbsd
ECLIPSE_ARCH=		x86

MAKE_ENV=		ECLIPSE_BUILD=${ECLIPSE_BUILD} \
			ECLIPSE_ARCH=${ECLIPSE_ARCH} \
			ECLIPSE_OS=${ECLIPSE_OS} \
			ECLIPSE_WS=${ECLIPSE_WS} \
			JAVA_HOME=${JAVA_HOME} \
			MOZILLA_HOME=${MOZILLA_HOME} \
			CC="${CC}" CXX="${CXX}" \
			MALLOC_OPTIONS="j"

FAKE_FLAGS=		${MAKE_ENV}

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

SUBST_VARS=		ECLIPSE_COREVER ECLIPSE_BUILD

FIXUP_FILES=		build \
			features/org.eclipse.platform.launchers/target.build.properties \
			plugins/org.eclipse.swt/Eclipse\ SWT\ PI/gtk/library/build.xml \
			plugins/org.eclipse.swt.gtk.openbsd.x86/build.xml \
			plugins/org.eclipse.update.core.openbsd/src/build.xml

# Build out openbsd source from linux source
# Avoid patch problems by adding the missing last line feeds
pre-patch:
	@exec ${SETENV} WRKSRC=${WRKSRC} ECLIPSE_WS=${ECLIPSE_WS} \
		${SCRIPTDIR}/prepatch.sh
.for file in ${FIXUP_FILES}
	@echo >> ${WRKSRC}/${file}
.endfor

do-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		./build -os ${ECLIPSE_OS} -ws ${ECLIPSE_WS} -arch ${ECLIPSE_ARCH} -compilelibs

do-install:
	@tar xzf ${WRKBUILD}/result/${ECLIPSE_OS}-${ECLIPSE_WS}-${ECLIPSE_ARCH}-sdk.tar.gz \
		-C ${PREFIX}
	@sed -e "s+%%ECLIPSE_HOME%%+${TRUEPREFIX}/eclipse+g" \
		-e "s+%%JAVA_HOME%%+${JAVA_HOME}+g" \
		-e "s+%%LOCALBASE%%+${TRUEPREFIX}+g" \
		${WRKBUILD}/eclipse.in > ${WRKBUILD}/eclipse.tmp
	${INSTALL_SCRIPT} ${WRKBUILD}/eclipse.tmp $(PREFIX)/bin/eclipse
	${INSTALL_PROGRAM} ${WRKBUILD}/launchertmp/eclipse ${PREFIX}/eclipse/eclipse
	${INSTALL_DATA} ${WRKBUILD}/plugins/org.eclipse.core.resources.openbsd/os/openbsd/x86/libcore_*.so.* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/plugins/org.eclipse.swt.gtk.openbsd.x86/libswt-*.so.* ${PREFIX}/lib

.include <bsd.port.mk>
