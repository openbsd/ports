# $OpenBSD: Makefile,v 1.26 2011/05/03 09:35:56 landry Exp $

ONLY_FOR_ARCHS= amd64 i386

COMMENT-main=	multi-platform productivity suite
COMMENT-kde=	optional integration of LibreOffice to the KDE environment
COMMENT-java=	optional integration of LibreOffice java features

BV=		3.3
VERSION=	3.3.2.2
DISTNAME=	libreoffice-${VERSION}
WRKDIST=	${WRKDIR}/libreoffice-build-${VERSION}
PKGNAME=	libreoffice-${VERSION}
PKGNAME-main=	libreoffice-${VERSION}
PKGNAME-kde=	libreoffice-kde-${VERSION}
PKGNAME-java=	libreoffice-java-${VERSION}
CATEGORIES=	editors productivity

EPOCH=		0

REVISION=	1

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.libreoffice.org/
MASTER_SITES=	http://download.documentfoundation.org/libreoffice/src/ \
		http://humppa.hu/libreoffice/ \
		http://download.go-oo.org/3.3/ \
		http://download.go-oo.org/src/
MASTER_SITES0=	http://www.numbertext.org/linux/

EDISTFILES=	libreoffice-build-${VERSION}.tar.gz

COMPONENTS=	artwork base bootstrap calc components extensions extras \
		filters help impress l10n libs-core libs-extern \
		libs-extern-sys libs-gui postprocess sdk testing \
		ure writer

.for _dfile in ${COMPONENTS}
EDISTFILES+=	libreoffice-${_dfile}-${VERSION}.tar.bz2
.endfor
EXTRACT_ONLY=	${EDISTFILES:C/:[0-9]$//}

DISTFILES+=	${EDISTFILES} \
		067201ea8b126597670b5eff72e1f66c-mythes-1.2.0.tar.gz \
		128cfc86ed5953e57fe0f5ae98b62c2e-libtextcat-2.2.tar.gz \
		17410483b5b5f267aa18b7e00b65e6e0-hsqldb_1_8_0.zip \
		1756c4fa6c616ae15973c104cd8cb256-Adobe-Core35_AFMs-314.tar.gz \
		26b3e95ddf3d9c077c480ea45874b3b8-lp_solve_5.5.tar.gz \
		2a177023f9ea8ec8bd00837605c5df1b-jakarta-tomcat-5.0.30-src.tar.gz \
		2ae988b339daec234019a7066f96733e-commons-lang-2.3-src.tar.gz \
		2c9b0f83ed5890af02c0df1c1776f39b-commons-httpclient-3.1-src.tar.gz \
		35c94d2df8893241173de1d16b6034c0-swingExSrc.zip \
		35efabc239af896dfb79be7ebdd6e6b9-gentiumbasic-fonts-1.10.zip \
		37282537d0ed1a087b1c8f050dc812d9-dejavu-fonts-ttf-2.32.zip \
		39bb3fcea1514f1369fcfc87542390fd-sacjava-1.3.zip \
		3c219630e4302863a9a83d0efde889db-commons-logging-1.1.1-src.tar.gz \
		48d8169acc35f97e05d8dcdfd45be7f2-lucene-2.3.2.tar.gz \
		5aba06ede2daa9f2c11892fbd7bc3057-libserializer.zip \
		67b42915c8432abf0a922438f00860a2-libxml.zip \
		79600e696a98ff95c2eba976f7a8dfbb-liblayout.zip \
		798b2ffdc8bcfe7bca2cf92b62caf685-rhino1_5R5.zip \
		9e436bff44c60dc8b97cba0c7fc11a5c-libwps-0.2.0.tar.bz2 \
		8294d6c42e3553229af9934c5c0ed997-stax-api-1.0-2-sources.jar \
		8ea307d71d11140574bfb9fcc2487e33-libbase.zip \
		a06a496d7a43cbdc35e69dbe678efadb-libloader.zip \
		a7983f859eafb2677d7ff386a023bc40-xsltml_2.1.2.zip \
		ada24d37d8d638b3d8a9985e80bc2978-source-9.0.0.7-bj.zip \
		af3c3acf618de6108d65fcdc92b492e1-commons-codec-1.3-src.tar.gz \
		881af2b7dca9b8259abbca00bbbc004d-LinLibertineG-20110101.zip:0 \
		ca4870d899fd7e943ffc310a5421ad4d-liberation-fonts-ttf-1.06.0.20100721.tar.gz \
		cf8a6967f7de535ae257fa411c98eb88-mdds_0.3.0.tar.bz2 \
		d0b5af6e408b8d2958f3d83b5244f5e8-hyphen-2.4.tar.gz \
		d1a3205871c3c52e8a50c9f18510ae12-libformula.zip \
		d4c4d91ab3a8e52a2e69d48d34ef4df4-core.zip \
		5ba6a61a2f66dfd5fee8cdd4cd262a37-libwpg-0.2.0.tar.bz2 \
		dbb3757275dc5cc80820c0b4dd24ed95-librepository.zip \
		ea570af93c284aa9e5621cd563f54f4d-bsh-2.0b1-src.tar.gz \
		ea91f2fb4212a21d708aced277e6e85a-vigra1.4.0.tar.gz \
		f3e2febd267c8e4b13df00dac211dd6d-flute.zip \
		f7925ba8491fe570e5164d2c72791358-libfonts.zip \
		fdb27bfe2dbe2e7b57ae194d9bf36bab-SampleICC-1.3.2.tar.gz \
		fe5b3e2b7c4577f30dc001054365653e-dejavu-fonts-ttf-2.30.zip \
		5ff846847dab351604ad859e2fd4ed3c-libwpd-0.9.1.tar.bz2

DIST_SUBDIR=	libreoffice

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -kde

PSEUDO_FLAVORS=	parallel no_lang
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
PKGNAME-i18n-$l=	libreoffice-i18n-$l-${VERSION}
COMMENT-i18n-$l=	$l language pack for LibreOffice
RUN_DEPENDS-i18n-$l=	editors/libreoffice
WANTLIB-i18n-$l=
LIB_DEPENDS-i18n-$l=
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
		db->=4,<5:databases/db/v4 \
		textproc/libxslt \
		net/curl \
		net/neon \
		textproc/icu4c \
		devel/gperf \
		textproc/raptor \
		textproc/redland \
		textproc/hunspell \
		devel/cppunit \
		print/poppler \
		x11/gnome/vfs2 \
		${MODGCONF2_LIB_DEPENDS}
WANTLIB-main=	gdk-x11-2.0>=400.14 gtk-x11-2.0>=400.14 \
		db>=4 xslt>=3 curl>=7 neon>=24 \
		icuuc>=0 icudata>=0 icui18n icule \
		raptor>=2 rasqal rdf>=0 poppler
WANTLIB-main+=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		crypto expat fontconfig freetype gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread pthread-stubs ssl xcb xml2 z gdk_pixbuf-2.0 \
		util ${MODGCONF2_WANTLIB}
WANTLIB-main+=	GL GLU Xxf86vm drm python2.6 stdc++ xcb-render xcb-shm
WANTLIB-main+=	${MODPY_WANTLIB}

RUN_DEPENDS-main=	devel/desktop-file-utils \
			misc/shared-mime-info

MODULES+=		x11/qt3
RUN_DEPENDS-kde=	editors/libreoffice
LIB_DEPENDS-kde=	${MODQT_LIB_DEPENDS} \
			x11/kde/libs3
WANTLIB-kde=		${MODQT_WANTLIB} \
			X11 c m pthread stdc++ \
			lib/kde3/kabc lib/kde3/kdecore \
			lib/kde3/kdeui lib/kde3/kio

.if !${FLAVOR:L:Mno_java}
MODULES+=		java
MODJAVA_VER=		1.4+
MODJAVA_JRERUN=		Yes
.endif
LIB_DEPENDS-java=	db-java->=4,<5:databases/db/v4,-java,java \
			devel/apache-ant>=1.8.2
RUN_DEPENDS-java=	${MODJAVA_RUN_DEPENDS} \
			editors/libreoffice \
			java/javaPathHelper
WANTLIB-java=		c stdc++ m pthread

USE_GMAKE=	Yes
NO_REGRESS=	Yes
VMEM_WARNING=	Yes

PATCHORIG=	.orig.port

CONFIGURE_STYLE=	autoconf automake no-autoheader
AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		QTINC="${MODQT_INCDIR}" QTDIR="${MODQT_LIBDIR}"

CONFIGURE_ARGS=	--disable-post-install-scripts \
		--enable-kde \
		--with-distro=LibreOfficeOpenBSD \
		--with-docdir=${PREFIX}/share/doc/libreoffice \
		--with-gnu-tar=${LOCALBASE}/bin/gtar \
		--with-installed-ooo-dirname=libreoffice \
		--with-lang="en-US ${LANGS}" \
		--with-ooo-builddir=${WRKSRC}/build/libreoffice \
		--with-srcdir=${DISTDIR}/libreoffice \
		--without-git \
		--without-system-libwpd \
		--with-compat-oowrappers

.if !${FLAVOR:L:Mno_java}
CONFIGURE_ARGS+=--with-java \
		--with-jdk-home=${JAVA_HOME} \
		--with-ant-home=${LOCALBASE}/ant \
		--with-db-jar=${LOCALBASE}/lib/db4/db.jar
.else
CONFIGURE_ARGS+=--without-java
.endif

.if ${FLAVOR:L:Mparallel}
NCPU!=		echo $$((`sysctl -n hw.ncpu`+1))
CONFIGURE_ARGS+=--with-num-cpus=${NCPU}
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-symbols \
		--enable-debug
.endif

MAKE_ENV+=	TMP=${WRKSRC} PYTHON="${MODPY_BIN}" VERBOSE=true

.if ${MACHINE_ARCH} == "i386"
OA=		x86
.elif ${MACHINE_ARCH} == "amd64"
OA=		x86_64
.endif

SUBST_VARS+=	BV OA

pre-patch:
	@ln -fs /bin/md5 ${WRKDIR}/bin/md5sum
	@ln -fs /usr/local/bin/gfind ${WRKDIR}/bin/find
	@ln -fs /usr/local/bin/gcat ${WRKDIR}/bin/cat
	@mkdir -p ${WRKSRC}/build/libreoffice
	@mkdir -p ${WRKSRC}/clone
.for _c in ${COMPONENTS}
	@mv ${WRKDIR}/libreoffice-${_c}-${VERSION}/* ${WRKSRC}/build/libreoffice/
	@rmdir ${WRKDIR}/libreoffice-${_c}-${VERSION}
.endfor
	@touch ${WRKSRC}/build/libreoffice/unpack
	@touch ${WRKSRC}/clone/repos_changed

post-install:
	cd ${PREFIX}/bin && \
	ln -sf ${TRUEPREFIX}/bin/libreoffice${BV} libreoffice && \
	for _a in soffice soffice${BV}; do \
		ln -sf ${TRUEPREFIX}/lib/libreoffice/program/soffice $$_a; done

.include <bsd.port.mk>
