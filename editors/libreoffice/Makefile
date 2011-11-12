# $OpenBSD: Makefile,v 1.52 2011/11/12 10:51:10 robert Exp $

ONLY_FOR_ARCHS= amd64 i386

COMMENT-main=	multi-platform productivity suite
COMMENT-kde=	optional integration of LibreOffice to the KDE environment
COMMENT-java=	optional integration of LibreOffice java features

BV=		3.4
VERSION=	3.4.4.2
DISTNAME=	libreoffice-${VERSION}
WRKDIST=	${WRKDIR}/libreoffice-bootstrap-${VERSION}
PKGNAME=	libreoffice-${VERSION}
PKGNAME-main=	libreoffice-${VERSION}
PKGNAME-kde=	libreoffice-kde-${VERSION}
PKGNAME-java=	libreoffice-java-${VERSION}
CATEGORIES=	editors productivity

EPOCH=		0

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.libreoffice.org/

MASTER_SITES=	http://download.documentfoundation.org/libreoffice/src/3.4.4/ \
		http://humppa.hu/libreoffice/ \
		http://download.go-oo.org/src/
MASTER_SITES0=	http://hg.services.openoffice.org/binaries/ \
		http://download.go-oo.org/src/ \
		http://download.go-oo.org/extern/ \
		http://www.numbertext.org/linux/ \
		http://ooo.itc.hu/oxygenoffice/download/libreoffice/

EDISTFILES=	libreoffice-bootstrap-${VERSION}.tar.bz2

COMPONENTS=	artwork base calc components extensions extras \
		filters help impress libs-core libs-extern libs-extern-sys \
		libs-gui postprocess sdk testing translations ure writer

.for _dfile in ${COMPONENTS}
EDISTFILES+=	libreoffice-${_dfile}-${VERSION}.tar.bz2
.endfor
EXTRACT_ONLY=	${EDISTFILES:C/:[0-9]$//}

DISTFILES+=	${EDISTFILES} \
		067201ea8b126597670b5eff72e1f66c-mythes-1.2.0.tar.gz:0 \
		128cfc86ed5953e57fe0f5ae98b62c2e-libtextcat-2.2.tar.gz:0 \
		17410483b5b5f267aa18b7e00b65e6e0-hsqldb_1_8_0.zip:0 \
		1756c4fa6c616ae15973c104cd8cb256-Adobe-Core35_AFMs-314.tar.gz:0 \
		26b3e95ddf3d9c077c480ea45874b3b8-lp_solve_5.5.tar.gz:0 \
		2a177023f9ea8ec8bd00837605c5df1b-jakarta-tomcat-5.0.30-src.tar.gz:0 \
		2ae988b339daec234019a7066f96733e-commons-lang-2.3-src.tar.gz:0 \
		2c9b0f83ed5890af02c0df1c1776f39b-commons-httpclient-3.1-src.tar.gz:0 \
		35c94d2df8893241173de1d16b6034c0-swingExSrc.zip:0 \
		35efabc239af896dfb79be7ebdd6e6b9-gentiumbasic-fonts-1.10.zip:0 \
		37282537d0ed1a087b1c8f050dc812d9-dejavu-fonts-ttf-2.32.zip:0 \
		39bb3fcea1514f1369fcfc87542390fd-sacjava-1.3.zip:0 \
		3c219630e4302863a9a83d0efde889db-commons-logging-1.1.1-src.tar.gz:0 \
		48d8169acc35f97e05d8dcdfd45be7f2-lucene-2.3.2.tar.gz:0 \
		f94d9870737518e3b597f9265f4e9803-libserializer-1.1.6.zip:0 \
		ace6ab49184e329db254e454a010f56d-libxml-1.1.7.zip:0 \
		db60e4fde8dd6d6807523deb71ee34dc-liblayout-0.2.10.zip:0 \
		798b2ffdc8bcfe7bca2cf92b62caf685-rhino1_5R5.zip:0 \
		83d4029aebf290c0a9a8fee9c99638d3-libwps-0.2.1.tar.bz2:0 \
		8294d6c42e3553229af9934c5c0ed997-stax-api-1.0-2-sources.jar:0 \
		eeb2c7ddf0d302fba4bfc6e97eac9624-libbase-1.1.6.zip:0 \
		97b2d4dba862397f446b217e2b623e71-libloader-1.1.6.zip:0 \
		a7983f859eafb2677d7ff386a023bc40-xsltml_2.1.2.zip:0 \
		ada24d37d8d638b3d8a9985e80bc2978-source-9.0.0.7-bj.zip:0 \
		af3c3acf618de6108d65fcdc92b492e1-commons-codec-1.3-src.tar.gz:0 \
		881af2b7dca9b8259abbca00bbbc004d-LinLibertineG-20110101.zip:0 \
		ca4870d899fd7e943ffc310a5421ad4d-liberation-fonts-ttf-1.06.0.20100721.tar.gz:0 \
		0ff7d225d087793c8c2c680d77aac3e7-mdds_0.5.3.tar.bz2:0 \
		48a9f787f43a09c0a9b7b00cd1fddbbf-hyphen-2.7.1.tar.gz:0 \
		3404ab6b1792ae5f16bbd603bd1e1d03-libformula-1.1.7.zip:0 \
		d4c4d91ab3a8e52a2e69d48d34ef4df4-core.zip:0 \
		5ba6a61a2f66dfd5fee8cdd4cd262a37-libwpg-0.2.0.tar.bz2:0 \
		8ce2fcd72becf06c41f7201d15373ed9-librepository-1.1.6.zip:0 \
		ea570af93c284aa9e5621cd563f54f4d-bsh-2.0b1-src.tar.gz:0 \
		ea91f2fb4212a21d708aced277e6e85a-vigra1.4.0.tar.gz:0 \
		d8bd5eed178db6e2b18eeed243f85aa8-flute-1.1.6.zip:0 \
		3bdf40c0d199af31923e900d082ca2dd-libfonts-1.1.6.zip:0 \
		fdb27bfe2dbe2e7b57ae194d9bf36bab-SampleICC-1.3.2.tar.gz:0 \
		fe5b3e2b7c4577f30dc001054365653e-dejavu-fonts-ttf-2.30.zip:0 \
		8d265a592619166f29c4672ea54812b7-libwpd-0.9.2.tar.bz2:0 \
		b4cae0700aa1c2aef7eb7f345365e6f1-translate-toolkit-1.8.1.tar.bz2:0 \
		7a0dcb3fe1e8c7229ab4fb868b7325e6-mdds_0.5.2.tar.bz2:0 \
		ba2930200c9f019c2d93a8c88c651a0f-flow-engine-0.9.4.zip:0

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
LANGS=			ar bg ca de es fa fi fr hu it ja ko \
			lt lv nl pl pt-BR ru sl sv

.for l in ${LANGS:L}
MULTI_PACKAGES+=	-i18n-$l
PKGNAME-i18n-$l=	libreoffice-i18n-$l-${VERSION}
COMMENT-i18n-$l=	$l language pack for LibreOffice
RUN_DEPENDS-i18n-$l=	editors/libreoffice
WANTLIB-i18n-$l=
LIB_DEPENDS-i18n-$l=
REVISION-i18n-$l =	1
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
		devel/gconf2 \
		devel/gettext

MODGCONF2_LIBDEP=No
LIB_DEPENDS-main=x11/gtk+2 \
		${MODPY_LIB_DEPENDS} \
		databases/db/v4 \
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
		${MODGCONF2_LIB_DEPENDS}
WANTLIB-main=	gdk-x11-2.0>=400.14 gtk-x11-2.0>=400.14 \
		db>=4 xslt>=3 curl>=7 neon>=24 \
		icuuc>=0 icudata>=0 icui18n icule \
		raptor>=2 rasqal rdf>=0 poppler
WANTLIB-main+=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		crypto expat fontconfig freetype gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread pthread-stubs ssl xcb xml2 z gdk_pixbuf-2.0 \
		util ${MODGCONF2_WANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-main+=	GL GLU Xxf86vm drm stdc++ xcb-render xcb-shm
WANTLIB-main+=	hunspell-1.2 gdk_pixbuf_xlib-2.0
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
LIB_DEPENDS-java=	databases/db/v4,-java \
			devel/apache-ant>=1.8.2
RUN_DEPENDS-java=	${MODJAVA_RUN_DEPENDS} \
			editors/libreoffice \
			java/javaPathHelper
WANTLIB-java=		c stdc++ m pthread

USE_GMAKE=	Yes
NO_REGRESS=	Yes
VMEM_WARNING=	Yes

PATCHORIG=	.orig.port

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.9

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		QTINC="${MODQT_INCDIR}" QTDIR="${MODQT_LIBDIR}"

CONFIGURE_ARGS=	--disable-build-mozilla \
		--disable-dbus \
		--disable-epm \
		--disable-fetch-external \
		--disable-gnome-vfs \
		--disable-kde4 \
		--disable-mozilla \
		--disable-nss-module \
		--disable-odk \
		--disable-opengl \
		--disable-post-install-scripts \
		--disable-randr-link \
		--disable-unix-qstart-libpng \
		--disable-xrender-link \
		--enable-binfilter \
		--enable-cairo \
		--enable-gstreamer \
		--enable-kde \
		--enable-lockdown \
		--enable-ext-presenter-minimizer \
		--enable-ext-pdfimport \
		--enable-ext-presenter-console \
		--enable-ext-report-builder \
		--enable-systray \
		--with-alloc=system \
		--with-compat-oowrappers \
		--with-extension-integration \
		--with-external-tar=${DISTDIR}/libreoffice \
		--with-docdir=${PREFIX}/share/doc/libreoffice \
		--with-fonts \
		--with-gnu-tar=${LOCALBASE}/bin/gtar \
		--with-installed-ooo-dirname=libreoffice \
		--with-lang="en-US ${LANGS}" \
		--with-myspell-dicts \
		--with-ooo-builddir=${WRKSRC}/build/libreoffice \
		--with-system-boost \
		--with-system-cairo \
		--with-system-cppunit \
		--with-system-curl \
		--with-system-db \
		--with-system-expat \
		--with-system-hunspell \
		--with-system-icu \
		--with-system-jars \
		--with-system-jpeg \
		--with-system-libxml \
		--with-system-libxslt \
		--with-system-mesa-headers \
		--with-system-neon \
		--with-system-openssl \
		--with-system-poppler \
		--with-system-python \
		--with-system-redland \
		--with-system-stdlibs \
		--with-system-xrender-headers \
		--with-system-zlib \
		--with-vendor="The OpenBSD project" \
		--without-junit \
		--without-openldap \
		--without-system-libwpd \
		--without-system-mozilla \
		--without-unix-wrapper

.if !${FLAVOR:L:Mno_java}
CONFIGURE_ARGS+=--enable-ext-wiki-publisher \
		--with-java \
		--with-java-target-version=1.5 \
		--with-jdk-home=${JAVA_HOME} \
		--with-ant-home=${LOCALBASE}/ant \
		--with-db-jar=${LOCALBASE}/lib/db4/db.jar
.else
CONFIGURE_ARGS+=--without-java
.endif

.if ${FLAVOR:L:Mparallel}
NCPU!=		echo $$((`sysctl -n hw.ncpu`+1))
.else
NCPU=		1
.endif
CONFIGURE_ARGS+=--with-num-cpus=${NCPU}

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-symbols \
		--enable-debug
.endif

MAKE_ENV+=	TMP=${WRKSRC} PYTHON="${MODPY_BIN}" verbose=t

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
.for _c in ${COMPONENTS}
	@mv ${WRKDIR}/libreoffice-${_c}-${VERSION}/* ${WRKSRC}
	@rmdir ${WRKDIR}/libreoffice-${_c}-${VERSION}
.endfor

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/soffice.sh ${PREFIX}/bin/soffice
	${SUBST_CMD} ${PREFIX}/bin/soffice
	rm ${PREFIX}/bin/soffice.beforesubst

	cd ${PREFIX}/bin && \
	for _a in sbase scalc sdraw simpress smath swriter \
		lobase localc lodraw loimpress lomath lowriter \
		oobase oocalc oodraw ooimpress oomath oowriter \
		libreoffice libreoffice${BV} soffice${BV} unopkg; do \
		ln -sf soffice $${_a}; done

	${INSTALL_DATA_DIR} ${PREFIX}/share/applications \
				${PREFIX}/share/icons \
				${PREFIX}/share/mime/packages

	for _d in base calc draw impress math \
		qstart startcenter writer; do \
		perl -pi -e "s,Icon=libreoffice34-,Icon=libreoffice-,g" \
			${PREFIX}/lib/libreoffice/share/xdg/$${_d}.desktop && \
		ln -sf ${TRUEPREFIX}/lib/libreoffice/share/xdg/$${_d}.desktop \
			${PREFIX}/share/applications/$${_d}.desktop; done

	cp -R ${WRKSRC}/sysui/desktop/icons/hicolor ${PREFIX}/share/icons
	for _f in `find ${PREFIX}/share/icons/*/*/apps -type f`; \
		do mv $${_f} `echo $${_f} | sed "s,apps/,apps/libreoffice-,g"`; done

	${INSTALL_DATA} ${WRKSRC}/sysui/unxobsd.pro/misc/libreoffice/openoffice.org.xml \
		${PREFIX}/share/mime/packages

.include <bsd.port.mk>
