# $OpenBSD: Makefile,v 1.21 2006/11/04 12:34:18 kurt Exp $

ONLY_FOR_ARCHS= i386

COMMENT=	"a multi-platform productivity suite"
COMMENT-kde=	"optional integration of OpenOffice to the KDE environment"
COMMENT-java=	"optional integration of OpenOffice java features"

VERSION=	2.0.4
DISTNAME=	OOo_${VERSION}_src
WRKDIST=	${WRKDIR}/OOD680_m5
PKGNAME=	openoffice-${VERSION}p11
PKGNAME-kde=	openoffice-kde-${VERSION}p11
PKGNAME-java=	openoffice-java-${VERSION}p11
CATEGORIES=	editors productivity

SHARED_LIBS=	icudata		26.0 \
		icui18n		26.0 \
		icule		26.0 \
		icuuc		26.0 \
		stlport_gcc	4.5

HOMEPAGE=	http://www.openoffice.org/
MASTER_SITES=	ftp://sunsite.informatik.rwth-aachen.de/pub/mirror/OpenOffice/stable/${VERSION}/ \
		ftp://ftp.tu-chemnitz.de/pub/openoffice/stable/${VERSION}/ \
		ftp://ftp.nluug.nl/pub/office/openoffice/stable/${VERSION}/ \
		http://vlaai.snt.utwente.nl/pub/software/openoffice/stable/${VERSION}/ \
		ftp://openoffice.mirror.cygnal.ca/openoffice/stable/${VERSION}/ \
		http://mirrors.protection.cx/~jolan/

# See http://www.openoffice.org/about.html#licenses
# and http://www.openoffice.org/license.html
# and http://www.openoffice.org/FAQs/faq-questions.html#licensing
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-kde -java
SUBPACKAGE?=

BUILD_DEPENDS=	:zip-*:archivers/zip \
		:unzip-*:archivers/unzip \
		:bison-*:devel/bison \
		:pkgconfig-*:devel/pkgconfig \
		:tcsh-*:shells/tcsh \
		:p5-Archive-Zip-*:archivers/p5-Archive-Zip \
		::textproc/libxslt \
		::print/cups \
		::devel/apache-ant \
		:db-java-4.*:databases/db/v4,-java,java

BASE_LIBS=	gdk-x11-2.0.>=400.14,gdk_pixbuf-2.0.>=400.14,gtk-x11-2.0.>=400.14::x11/gtk+2 \
		python2.3:python-2.3.*:lang/python/2.3 \
		db.>=4:db-4.*:databases/db/v4 \
		curl.>=2::net/curl \
		neon.>=24::net/neon \
		sndfile.>=1::audio/libsndfile

KDE_LIBS=	kabc,kdecore,kdeui,kio::x11/kde/libs3

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-kde"
RUN_DEPENDS=	::editors/openoffice
LIB_DEPENDS=	${KDE_LIBS}
WANTLIB=	X11 m
MODULES=	x11/qt3
. elif ${SUBPACKAGE} == "-java"
RUN_DEPENDS=	::editors/openoffice \
		:db-java-4.*:databases/db/v4,-java,java
WANTLIB=	c m pthread stdc++
MODULES=	java
MODJAVA_VER=	1.4+
MODJAVA_JRERUN=	Yes
. else
LIB_DEPENDS=	${BASE_LIBS}
WANTLIB=	ICE SM X11 Xext Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 iconv intl ossaudio jpeg m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pthread stdc++ util xml2 z
. endif
.else
MODULES=	x11/qt3 java
MODJAVA_VER=	1.4+
LIB_DEPENDS=	${BASE_LIBS} ${KDE_LIBS}
.endif

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes
VMEM_WARNING=	Yes

PATCHORIG=	.orig.port
WRKCONF=	${WRKSRC}/config_office

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.59
AUTOCONF_DIR=		${WRKCONF}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		QTINC="${MODQT_INCDIR}" QTDIR="${MODQT_LIBDIR}"

CONFIGURE_ARGS=	--disable-gnome-vfs \
		--disable-mozilla \
		--disable-odk \
		--enable-cairo \
		--enable-kde \
		--with-system-jpeg \
		--with-system-python \
		--with-system-libxml \
		--with-system-stdlibs \
		--with-system-freetype \
		--with-system-curl \
		--with-system-zlib \
		--with-system-expat \
		--with-system-neon \
		--with-system-db \
		--with-system-sndfile \
		--with-epm=internal \
		--with-alloc=system \
		--with-java \
		--with-jdk-home=${JAVA_HOME} \
		--with-ant-home=${LOCALBASE}/ant/lib \
		--with-db-jar=${LOCALBASE}/lib/db4/db.jar

FLAVORS=	debug
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-symbols
.endif

MAKE_ENV+=	envcflags="${CFLAGS}"

# kludge
OOARCH=		OPENBSDGCCI
TCSH=		${LOCALBASE}/bin/tcsh

pre-patch:
	@cd ${WRKSRC}/bridges/source/cpp_uno && \
		cp -R gcc3_freebsd_intel gcc3_openbsd_intel && \
		perl -pi -e "s,FREEBSD,OPENBSD,g" gcc3_openbsd_intel/makefile.mk

do-build:
	@cd ${WRKBUILD} && \
		./bootstrap && \
		${SETENV} ${MAKE_ENV} ${TCSH} -c 'source OpenBSDEnv.Set && dmake'

do-install:
	cd ${WRKSRC}/instsetoo_native/unxobsd.pro/OpenOffice/portable/install/en-US/openbsd-* && \
		for SW in `ls -1 *.sw`; do \
			${TAR} xf $$SW -C ${PREFIX}; \
		done

	${INSTALL_SCRIPT} ${FILESDIR}/soffice.sh ${PREFIX}/bin/soffice
	perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g; \
		s,%%X11BASE%%,${X11BASE},g" \
                ${PREFIX}/bin/soffice \

	cd ${PREFIX}/bin && \
	for app in sbase scalc sdraw simpress smath setofficelang spadmin swriter; do \
		ln -sf soffice $$app ; done

.include <bsd.port.mk>
