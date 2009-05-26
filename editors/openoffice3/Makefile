# $OpenBSD: Makefile,v 1.18 2009/05/26 11:01:47 ajacoutot Exp $

ONLY_FOR_ARCHS= amd64 i386

COMMENT-main=	multi-platform productivity suite
COMMENT-kde=	optional integration of OpenOffice to the KDE environment
COMMENT-java=	optional integration of OpenOffice java features

VERSION=	3.1.0
DISTNAME=	OOo_${VERSION}
WRKDIST=	${WRKDIR}/OOO310_m11
PKGNAME=	openoffice-${VERSION}
PKGNAME-main=	openoffice-${VERSION}p1
PKGNAME-kde=	openoffice-kde-${VERSION}
PKGNAME-java=	openoffice-java-${VERSION}
CATEGORIES=	editors productivity

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.openoffice.org/
MASTER_SITES=	http://vlaai.snt.utwente.nl/pub/software/openoffice/stable/${VERSION}/ \
		http://ftp.linux.cz/pub/localization/OpenOffice.org/devel/build/Sources/ \
		http://humppa.hu/ooo/ \
		ftp://ftp.ussg.iu.edu/pub/openoffice/stable/${VERSION}/ \
		ftp://sunsite.informatik.rwth-aachen.de/pub/mirror/OpenOffice/stable/${VERSION}/ \
		ftp://ftp.tu-chemnitz.de/pub/openoffice/stable/${VERSION}/ \
		ftp://ftp.nluug.nl/pub/office/openoffice/stable/${VERSION}/ \
		http://vlaai.snt.utwente.nl/pub/software/openoffice/stable/${VERSION}/ \
		ftp://openoffice.mirror.cygnal.ca/openoffice/stable/${VERSION}/ \
		http://mirrors.protection.cx/~jolan/
MASTER_SITES0=	http://www.bsd.hu/~robert/ooo/ \
		http://humppa.hu/ooo/

DISTFILES=	ooo-desktop-0.1.tar.gz:0

.for dfile in binfilter core extensions l10n system
DISTFILES+=	${DISTNAME}_src_${dfile}.tar.bz2
.endfor

DIST_SUBDIR=	openoffice

# See http://www.openoffice.org/about.html#licenses
# and http://www.openoffice.org/license.html
# and http://www.openoffice.org/FAQs/faq-licensing.html 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -kde

PSEUDO_FLAVORS=	normal_build parallel no_lang
FLAVORS=	debug no_java
FLAVOR?=

.if ${FLAVOR:L:Mparallel}
DISTFILES+=	nbcat-0.1.tar.gz:0
.else
SUPDISTFILES+=	nbcat-0.1.tar.gz:0
.endif

.if !${FLAVOR:L:Mno_java}
MULTI_PACKAGES+=	-java
.endif

.if !${FLAVOR:L:Mno_lang}
LANGS=			bg ca de es fa fi fr hu it ja ko \
			lt lv nl pl pt-BR ru sl sv

.for l in ${LANGS:L}
MULTI_PACKAGES+=	-i18n-$l
PKGNAME-i18n-$l=	openoffice-i18n-$l-${VERSION}
COMMENT-i18n-$l=	$l language pack for OpenOffice.Org
RUN_DEPENDS-i18n-$l=	::editors/openoffice3
WANTLIB-i18n-$l=
LIB_DEPENDS-i18n-$l=
.endfor
.endif

BUILD_DEPENDS+=	:zip-*:archivers/zip \
		:unzip-*:archivers/unzip \
		:bison-*:devel/bison \
		:tcsh-*:shells/tcsh \
		:bash-*:shells/bash \
		:p5-Archive-Zip-*:archivers/p5-Archive-Zip \
		::print/cups \
		::devel/boost

MODULES+=	lang/python
LIB_DEPENDS-main=gdk-x11-2.0.>=400.14,gdk_pixbuf-2.0.>=400.14,gtk-x11-2.0.>=400.14::x11/gtk+2 \
		${MODPY_LIB_DEPENDS} \
		db.>=4:db->=4,<5:databases/db/v4 \
		xslt.>=3::textproc/libxslt \
		curl.>=7::net/curl \
		neon.>=24::net/neon \
		wpd.>=8::textproc/libwpd \
		icuuc.>=0,icudata.>=0::textproc/icu4c \
		::devel/gperf \
		raptor.>=2::textproc/raptor \
		rdf.>=0::textproc/redland
WANTLIB-main=	ICE SM X11 Xau Xcomposite Xdamage Xdmcp Xext Xrender Xcursor \
		Xfixes Xi Xinerama Xrandr atk-1.0 c cairo crypto expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 iconv intl jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread rasqal ssl util xml2 z icui18n icule 
RUN_DEPENDS-main=	:desktop-file-utils-*:devel/desktop-file-utils

MODULES+=		x11/qt3
RUN_DEPENDS-kde=	::editors/openoffice3
LIB_DEPENDS-kde=	${MODQT_LIB_DEPENDS} \
			kabc,kdecore,kdeui,kio::x11/kde/libs3
WANTLIB-kde=		X11 Xau Xdmcp Xext Xrandr Xrender estdc++ m

.if !${FLAVOR:L:Mno_java}
MODULES+=		java
MODJAVA_VER=		1.4+
MODJAVA_JRERUN=		Yes
.endif
LIB_DEPENDS-java=	:db-java->=4,<5:databases/db/v4,-java,java \
			::devel/apache-ant
RUN_DEPENDS-java=	${MODJAVA_RUN_DEPENDS} \
			::editors/openoffice3 \
			::java/javaPathHelper
WANTLIB-java=		c m pthread

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes
VMEM_WARNING=	Yes

PATCHORIG=	.orig.port

MODULES+=	gcc4
MODGCC4_ARCHES=	*
MODGCC4_LANGS=	c c++

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.61
AUTOCONF_DIR=		${WRKCONF}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		QTINC="${MODQT_INCDIR}" QTDIR="${MODQT_LIBDIR}"

CONFIGURE_ARGS=	--disable-gnome-vfs \
		--disable-mozilla \
		--disable-odk \
		--disable-pasf \
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
		--with-system-boost \
		--with-system-libwpd \
		--with-system-openssl \
		--with-system-icu \
		--with-system-redland \
		--with-epm=internal \
		--with-alloc=system \
		--with-vba-package-format="builtin" \
		--with-lang="en-US ${LANGS}"

.if !${FLAVOR:L:Mno_java}
CONFIGURE_ARGS+=--with-java \
		--with-jdk-home=${JAVA_HOME} \
		--with-ant-home=${LOCALBASE}/ant/lib \
		--with-db-jar=${LOCALBASE}/lib/db4/db.jar
.else
CONFIGURE_ARGS+=--without-java
.endif

# Some cool OpenOffice.Org extensions
CONFIGURE_ARGS+=	--enable-minimizer \
			--enable-presenter-console \
			--enable-pdfimport
EXTENSIONS=		minimizer/sun-presentation-minimizer.oxt \
			presenter/presenter-screen.oxt \
			pdfimport/pdfimport.oxt

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-symbols \
			--enable-debug
.endif

MAKE_ENV+=	envcflags="${CFLAGS}"

# kludge
TCSH=		${LOCALBASE}/bin/tcsh

.if ${FLAVOR:L:Mparallel}
NCPU!=		echo $$((`sysctl -n hw.ncpu`+1))
.else
NCPU=		1
.endif

.if ${FLAVOR:L:Mnormal_build}
BUILD_CMD=	cd instsetoo_native && build.pl -P ${NCPU} --all && \
		cd util && dmake ooolanguagepack
.else
BUILD_CMD=	cd instsetoo_native && build.pl -P ${NCPU} --all --dlv_switch -link && \
		cd util && dmake ooolanguagepack
.endif

pre-patch:
.if ${FLAVOR:L:Mparallel}
	ln -fs ${WRKDIR}/cat.${ARCH} ${WRKDIR}/bin/cat
.endif
.for arch in intel x86-64
	@cd ${WRKSRC}/bridges/source/cpp_uno && \
		cp -R gcc3_freebsd_${arch} gcc3_openbsd_${arch} && \
		perl -pi -e "s,FREEBSD,OPENBSD,g" gcc3_openbsd_${arch}/makefile.mk
.endfor

do-build:
	@cd ${WRKBUILD} && \
		./bootstrap && \
		${SETENV} ${MAKE_ENV} ${TCSH} -c 'limit descriptors 256 && source OpenBSDEnv.Set && ${BUILD_CMD}' 

do-install:
	@rm -Rf ${WRKDIR}/tmp
	@mkdir ${WRKDIR}/tmp

	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/openoffice
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/48x48/apps

	cd ${WRKDIR}/ooo-desktop && \
		for DFILE in `ls -1 *.desktop`; do \
			${INSTALL_DATA} $$DFILE \
				${PREFIX}/share/applications/openoffice; \
		done && \
		for ICONS in `ls -1 *.png`; do \
			${INSTALL_DATA} $$ICONS ${PREFIX}/share/icons/hicolor/48x48/apps; \
		done

	cd ${WRKSRC}/instsetoo_native/unxobsd.pro/OpenOffice/portable/install/en-US*/openbsd-* && \
		for SW in `ls -1 *.sw`; do \
			${TAR} xf $$SW -C ${WRKDIR}/tmp; \
		done

.for l in ${LANGS}
	cd ${WRKSRC}/instsetoo_native/unxobsd.pro/OpenOffice_languagepack/portable/install/$l/openbsd-* && \
		for SW in `ls -1 *.sw`; do \
			${TAR} xf $$SW -C ${WRKDIR}/tmp; \
		done
.endfor

	cd ${WRKDIR}/tmp/opt ; ${TAR} cf - -C . . | ${TAR} xf - -C ${PREFIX}

	cd ${WRKSRC}/solver/310/unxobsd.pro/bin && \
		${INSTALL_DATA}	${EXTENSIONS} ${PREFIX}/openoffice.org3/share/extension/install

	${INSTALL_SCRIPT} ${FILESDIR}/soffice.sh ${PREFIX}/bin/soffice
	perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g; \
		s,%%X11BASE%%,${X11BASE},g" \
                ${PREFIX}/bin/soffice \

	cd ${PREFIX}/bin && \
	for app in sbase scalc sdraw simpress smath setofficelang spadmin swriter; do \
		ln -sf soffice $$app ; done

.include <bsd.port.mk>
