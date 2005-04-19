# $OpenBSD: Makefile,v 1.2 2005/04/19 13:56:47 kurt Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		"IDE for anything and nothing in particular"
COMMENT-gnome=		"gnome intergration library for eclipse"
COMMENT-mozilla=	"mozilla intergration library for eclipse HTML Browser Widget"

ECLIPSE_VER=		3.0.2
DISTNAME=		eclipse-sourceBuild-srcIncluded-${ECLIPSE_VER}
PKGNAME=		eclipse-sdk-${ECLIPSE_VER}
PKGNAME-gnome=		eclipse-sdk-gnome-${ECLIPSE_VER}
PKGNAME-mozilla=	eclipse-sdk-mozilla-${ECLIPSE_VER}
CATEGORIES=		devel/eclipse java 

HOMEPAGE=		http://www.eclipse.org/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# Common Public License Version 1.0 (http://www.eclipse.org/legal/cpl-v10.html)
# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
# Apache Software License 1.1 (http://www.apache.org/licenses/LICENSE-1.1)
# IBM Public License 1.0 (http://oss.software.ibm.com/developerworks/opensource/license10.html)
# Metro Link Public License 1.00 (http://www.opengroup.org/openmotif/supporters/metrolink/license.html)
# Mozilla Public License Version 1.1 (http://www.mozilla.org/MPL/MPL-1.1.html)
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

MASTER_SITES=		${MASTER_SITE_ECLIPSE:=R-3.0.2-200503110845/}
EXTRACT_SUFX=		.zip

VMEM_WARNING=		Yes
BUILD_DEPENDS=		:jdk->=1.4.2p0,<1.5:devel/jdk/1.4 \
			:mozilla-devel-*-gtk2:www/mozilla,-devel,gtk2 \
			:apache-ant->=1.6.1:devel/apache-ant \
			:pkgconfig-*:devel/pkgconfig

RUN_DEPENDS=		:jdk->=1.4.2p0:devel/jdk/1.4 \
			:apache-ant->=1.6.1:devel/apache-ant

LIB_DEPENDS=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

WANTLIB_COMMON=		atk-1.0.0.0 gobject-2.0.0.0 

USE_GMAKE=		Yes
USE_X11=		Yes

MULTI_PACKAGES=		-gnome -mozilla
SUBPACKAGE?=

GNOME_LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui

MOZILLA_LIB_DEPENDS=	mozilla/xpcom,mozilla/gtkembedmoz,mozilla/nspr4,mozilla/plc4,mozilla/plds4:mozilla-*-gtk2:www/mozilla,gtk2

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-gnome"
RUN_DEPENDS=		:${PKGNAME}:devel/eclipse/sdk
LIB_DEPENDS=		${GNOME_LIB_DEPENDS}
WANTLIB=		gnome-2 gnomevfs-2
. elif ${SUBPACKAGE} == "-mozilla"
RUN_DEPENDS=		:${PKGNAME}:devel/eclipse/sdk
LIB_DEPENDS=		${MOZILLA_LIB_DEPENDS}
. else
WANTLIB=		Xtst atk-1.0.0.0 c gobject-2.0.0.0 gthread-2.0.0.0
. endif
.else
. if ${MULTI_PACKAGES:M-gnome}
LIB_DEPENDS+=		${GNOME_LIB_DEPENDS}
. endif
. if ${MULTI_PACKAGES:M-mozilla}
LIB_DEPENDS+=		${MOZILLA_LIB_DEPENDS}
. endif
.endif

JAVA_HOME=		${LOCALBASE}/jdk-1.4.2
MOZILLA_HOME=		${LOCALBASE}/mozilla
ECLIPSE_WS=		gtk
ECLIPSE_BUILD=		3064
ECLIPSE_COREVER=	3.0.0
ECLIPSE_OS=		openbsd
ECLIPSE_ARCH=		x86

MAKE_FLAGS=		ECLIPSE_BUILD=${ECLIPSE_BUILD} \
			ECLIPSE_ARCH=${ECLIPSE_ARCH} \
			ECLIPSE_OS=${ECLIPSE_OS} \
			ECLIPSE_WS=${ECLIPSE_WS} \
			JAVA_HOME=${JAVA_HOME} \
			MOZILLA_HOME=${MOZILLA_HOME}
MAKE_ENV=		CXX="${CXX}"

FAKE_FLAGS=		${MAKE_FLAGS}

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

SUBST_VARS=		ECLIPSE_VER ECLIPSE_COREVER ECLIPSE_BUILD

FIXUP_FILES=		plugins/org.eclipse.update.core.openbsd/src/build.xml \
			plugins/org.eclipse.swt/Eclipse\ SWT\ PI/gtk/library/make_gtk.xml \
			plugins/org.eclipse.swt.gtk/build.xml \
			plugins/org.eclipse.osgi/eclipseAdaptor/src/org/eclipse/core/runtime/adaptor/EclipseBundleData.java

# Build out openbsd source from linux source
# Avoid patch problems by adding the missing last line feeds
pre-patch:
	@exec ${SETENV} WRKSRC=${WRKSRC} ECLIPSE_WS=${ECLIPSE_WS} \
		${SCRIPTDIR}/prepatch.sh
.for file in ${FIXUP_FILES}
	@echo >> ${WRKSRC}/${file}
.endfor

.include <bsd.port.mk>
