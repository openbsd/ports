# $OpenBSD: Makefile,v 1.73 2010/12/23 10:21:20 espie Exp $

ONLY_FOR_ARCHS= amd64 i386

COMMENT-main=	multi-platform productivity suite
COMMENT-kde=	optional integration of OpenOffice to the KDE environment
COMMENT-java=	optional integration of OpenOffice java features

MR=		3.3
VERSION=	${MR}.0rc8
EPOCH = 	0
RCDATE=		20101214
DISTNAME=	OOo_${VERSION}
WRKDIST=	${WRKDIR}/OOO330_m18
PKGNAME=	openoffice-${VERSION}
PKGNAME-main=	openoffice-${VERSION}
PKGNAME-kde=	openoffice-kde-${VERSION}
PKGNAME-java=	openoffice-java-${VERSION}
CATEGORIES=	editors productivity

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.openoffice.org/
MASTER_SITES=	http://www.bsd.hu/~robert/ooo/ \
		http://vlaai.snt.utwente.nl/pub/software/openoffice/extended/${VERSION}/ \
		http://vlaai.snt.utwente.nl/pub/software/openoffice/stable/${VERSION}/ \
		http://humppa.hu/ooo/ \
		http://ftp.linux.cz/pub/localization/OpenOffice.org/devel/build/Sources/ \
		ftp://ftp.ussg.iu.edu/pub/openoffice/stable/${VERSION}/ \
		ftp://sunsite.informatik.rwth-aachen.de/pub/mirror/OpenOffice/stable/${VERSION}/ \
		ftp://ftp.tu-chemnitz.de/pub/openoffice/stable/${VERSION}/ \
		ftp://ftp.nluug.nl/pub/office/openoffice/stable/${VERSION}/ \
		http://vlaai.snt.utwente.nl/pub/software/openoffice/stable/${VERSION}/ \
		ftp://openoffice.mirror.cygnal.ca/openoffice/stable/${VERSION}/
MASTER_SITES0=	http://www.bsd.hu/~robert/ooo/ \
		http://humppa.hu/ooo/
MASTER_SITES1=	http://hg.services.openoffice.org/binaries/ \
		http://humppa.hu/ooo/

EDISTFILES=	ooo-desktop-0.2.tar.gz:0
.for dfile in binfilter core extensions l10n system
EDISTFILES+=	${DISTNAME}_${RCDATE}_src_${dfile}.tar.bz2
.endfor
EXTRACT_ONLY=	${EDISTFILES:C/:[0-9]$//}

DISTFILES+=	${EDISTFILES} \
		067201ea8b126597670b5eff72e1f66c-mythes-1.2.0.tar.gz:1 \
		128cfc86ed5953e57fe0f5ae98b62c2e-libtextcat-2.2.tar.gz:1 \
		17410483b5b5f267aa18b7e00b65e6e0-hsqldb_1_8_0.zip:1 \
		1756c4fa6c616ae15973c104cd8cb256-Adobe-Core35_AFMs-314.tar.gz:1 \
		26b3e95ddf3d9c077c480ea45874b3b8-lp_solve_5.5.tar.gz:1 \
		2a177023f9ea8ec8bd00837605c5df1b-jakarta-tomcat-5.0.30-src.tar.gz:1 \
		2ae988b339daec234019a7066f96733e-commons-lang-2.3-src.tar.gz:1 \
		2c9b0f83ed5890af02c0df1c1776f39b-commons-httpclient-3.1-src.tar.gz:1 \
		35c94d2df8893241173de1d16b6034c0-swingExSrc.zip:1 \
		35efabc239af896dfb79be7ebdd6e6b9-gentiumbasic-fonts-1.10.zip:1 \
		37282537d0ed1a087b1c8f050dc812d9-dejavu-fonts-ttf-2.32.zip:1 \
		39bb3fcea1514f1369fcfc87542390fd-sacjava-1.3.zip:1 \
		3c219630e4302863a9a83d0efde889db-commons-logging-1.1.1-src.tar.gz:1 \
		48d8169acc35f97e05d8dcdfd45be7f2-lucene-2.3.2.tar.gz:1 \
		5aba06ede2daa9f2c11892fbd7bc3057-libserializer.zip:1 \
		67b42915c8432abf0a922438f00860a2-libxml.zip:1 \
		79600e696a98ff95c2eba976f7a8dfbb-liblayout.zip:1 \
		798b2ffdc8bcfe7bca2cf92b62caf685-rhino1_5R5.zip:1 \
		8294d6c42e3553229af9934c5c0ed997-stax-api-1.0-2-sources.jar:1 \
		8ea307d71d11140574bfb9fcc2487e33-libbase.zip:1 \
		a06a496d7a43cbdc35e69dbe678efadb-libloader.zip:1 \
		a7983f859eafb2677d7ff386a023bc40-xsltml_2.1.2.zip:1 \
		ada24d37d8d638b3d8a9985e80bc2978-source-9.0.0.7-bj.zip:1 \
		af3c3acf618de6108d65fcdc92b492e1-commons-codec-1.3-src.tar.gz:1 \
		bd30e9cf5523cdfc019b94f5e1d7fd19-cppunit-1.12.1.tar.gz:1 \
		ca4870d899fd7e943ffc310a5421ad4d-liberation-fonts-ttf-1.06.0.20100721.tar.gz:1 \
		cf8a6967f7de535ae257fa411c98eb88-mdds_0.3.0.tar.bz2:1 \
		d0b5af6e408b8d2958f3d83b5244f5e8-hyphen-2.4.tar.gz:1 \
		d1a3205871c3c52e8a50c9f18510ae12-libformula.zip:1 \
		d4c4d91ab3a8e52a2e69d48d34ef4df4-core.zip:1 \
		dbb3757275dc5cc80820c0b4dd24ed95-librepository.zip:1 \
		ea570af93c284aa9e5621cd563f54f4d-bsh-2.0b1-src.tar.gz:1 \
		ea91f2fb4212a21d708aced277e6e85a-vigra1.4.0.tar.gz:1 \
		f3e2febd267c8e4b13df00dac211dd6d-flute.zip:1 \
		f7925ba8491fe570e5164d2c72791358-libfonts.zip:1 \
		fdb27bfe2dbe2e7b57ae194d9bf36bab-SampleICC-1.3.2.tar.gz:1 \
		fe5b3e2b7c4577f30dc001054365653e-dejavu-fonts-ttf-2.30.zip:1 \
		599dc4cc65a07ee868cf92a667a913d2-xpdf-3.02.tar.gz:1 \
		3ade8cfe7e59ca8e65052644fed9fca4-epm-3.7.tar.gz:1

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
RUN_DEPENDS-i18n-$l=	editors/openoffice3
WANTLIB-i18n-$l=
LIB_DEPENDS-i18n-$l=
REVISION-i18n-$l=	0
.endfor
.endif

BUILD_DEPENDS+=	archivers/zip \
		archivers/unzip \
		archivers/gtar \
		devel/bison \
		shells/bash \
		archivers/p5-Archive-Zip \
		print/cups \
		boost->=1.41.0:devel/boost \
		misc/fileutils \
		misc/findutils \
		textproc/textutils

MODULES+=	lang/python \
		devel/gconf2
MODGCONF2_LIBDEP=No
LIB_DEPENDS-main=x11/gtk+2 \
		${MODPY_LIB_DEPENDS} \
		databases/db/v4 \
		textproc/libxslt \
		net/curl \
		net/neon \
		textproc/libwpd \
		textproc/icu4c \
		devel/gperf \
		textproc/raptor \
		textproc/redland \
		textproc/hunspell \
		devel/cppunit \
		${MODGCONF2_LIB_DEPENDS}
WANTLIB-main=	gdk-x11-2.0>=400.14 gtk-x11-2.0>=400.14 \
		db>=4 xslt>=3 curl>=7 neon>=24 \
		icuuc>=0 icudata>=0 icui18n icule \
		raptor>=2 rasqal rdf>=0
WANTLIB-main+=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		crypto expat fontconfig freetype gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread pthread-stubs ssl util xcb xml2 z gdk_pixbuf-2.0 \
		${MODGCONF2_WANTLIB}
WANTLIB-main+=	GL Xxf86vm drm python2.6 stdc++ xcb-render xcb-shm
WANTLIB-main+=	${MODPY_WANTLIB}

RUN_DEPENDS-main=	devel/desktop-file-utils

.include <bsd.own.mk>

MODULES+=		x11/qt3
RUN_DEPENDS-kde=	editors/openoffice3
LIB_DEPENDS-kde=	${MODQT_LIB_DEPENDS} \
			x11/kde/libs3
WANTLIB-kde=		${MODQT_WANTLIB} \
			X11 Xau Xdmcp Xext Xrandr Xrender stdc++ m \
			pthread-stubs xcb kabc kdecore kdeui kio

.if !${FLAVOR:L:Mno_java}
MODULES+=		java
MODJAVA_VER=		1.4+
MODJAVA_JRERUN=		Yes
.endif
LIB_DEPENDS-java=	db-java->=4,<5:databases/db/v4,-java,java \
			devel/apache-ant
RUN_DEPENDS-java=	${MODJAVA_RUN_DEPENDS} \
			editors/openoffice3 \
			java/javaPathHelper
WANTLIB-java=		c stdc++ m pthread

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
		--enable-hids \
		--with-system-cppunit \
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
		--with-system-hunspell \
		--with-epm=internal \
		--with-alloc=system \
		--with-vba-package-format="builtin" \
		--with-lang="en-US ${LANGS}" \
		--with-use-shell=bash \
		--without-junit \
		--disable-fetch-external \
		--with-gnu-cp=/usr/local/bin/gcp \
		--with-external-tar=${DISTDIR}/openoffice

.if !${FLAVOR:L:Mno_java}
CONFIGURE_ARGS+=--with-java \
		--with-jdk-home=${JAVA_HOME} \
		--with-ant-home=${LOCALBASE}/ant/lib \
		--with-db-jar=${LOCALBASE}/lib/db4/db.jar \
		--enable-report-builder \
		--enable-wiki-publisher
EXTENSIONS =	swext/wiki-publisher.oxt \
		report-builder.oxt
.else
CONFIGURE_ARGS+=--without-java \
		--without-ant
.endif

# Some cool OpenOffice.Org extensions
CONFIGURE_ARGS+=	--enable-minimizer \
			--enable-presenter-console \
			--enable-pdfimport
EXTENSIONS +=		minimizer/presentation-minimizer.oxt \
			presenter/presenter-screen.oxt \
			pdfimport/pdfimport.oxt

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-symbols \
			--enable-debug
.endif

MAKE_ENV+=	LOCALBASE="${LOCALBASE}"
MAKE_ENV+=	TMP=${WRKSRC} PYTHON="${MODPY_BIN}"

# kludge
BASH=		${LOCALBASE}/bin/bash

.if !${FLAVOR:L:Mno_java}
JAVAFIX=	export LD_LIBRARY_PATH=${JAVA_HOME}/jre/lib/${ARCH}:${JAVA_HOME}/jre/lib/${ARCH}/client:${JAVA_HOME}/jre/lib/${ARCH}/server
.else
JAVAFIX=	true
.endif

.if ${FLAVOR:L:Mparallel}
NCPU!=		echo $$((`sysctl -n hw.ncpu`+1))
NCPUFLAG=	-P ${NCPU}
.endif

.if ${FLAVOR:L:Mnormal_build}
BUILD_CMD=	cd instsetoo_native && build.pl ${NCPUFLAG} --all && \
		cd util && dmake ooolanguagepack
.else
BUILD_CMD=	cd instsetoo_native && build.pl ${NCPUFLAG} --all --dlv_switch -link && \
		cd util && dmake ooolanguagepack
.endif

SUBST_VARS+=	MR

pre-patch:
	@ln -fs ${LOCALBASE}/bin/gcat ${WRKDIR}/bin/cat
	@ln -fs ${LOCALBASE}/bin/gcp ${WRKDIR}/bin/cp
	@ln -fs ${LOCALBASE}/bin/gfind ${WRKDIR}/bin/find

do-build:
	@cd ${WRKBUILD} && \
		./bootstrap && \
		${SETENV} ${MAKE_ENV} ${BASH} -c 'ulimit -n 256 && source OpenBSDEnv.Set.sh && ${JAVAFIX} && ${BUILD_CMD}'

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

	cd ${WRKSRC}/instsetoo_native/unxobsd.pro/OpenOffice/portable/install/en-US/openbsd && \
		for SW in `ls -1 *.sw`; do \
			${TAR} xf $$SW -C ${WRKDIR}/tmp; \
		done

.for l in ${LANGS}
	cd ${WRKSRC}/instsetoo_native/unxobsd.pro/OpenOffice_languagepack/portable/install/$l/openbsd && \
		for SW in `ls -1 *.sw`; do \
			${TAR} xf $$SW -C ${WRKDIR}/tmp; \
		done
.endfor

	cd ${WRKDIR}/tmp/opt ; ${TAR} cf - -C . . | ${TAR} xf - -C ${PREFIX}

	cd ${WRKSRC}/solver/330/unxobsd.pro/bin && \
		${INSTALL_DATA}	${EXTENSIONS} ${PREFIX}/openoffice.org3/share/extensions/

	${INSTALL_SCRIPT} ${FILESDIR}/soffice.sh ${PREFIX}/bin/soffice
	perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g; \
		s,%%X11BASE%%,${X11BASE},g" \
                ${PREFIX}/bin/soffice \

	cd ${PREFIX}/bin && \
	for app in sbase scalc sdraw simpress smath setofficelang spadmin swriter openoffice.org3; do \
		ln -sf soffice $$app ; done

.include <bsd.port.mk>
