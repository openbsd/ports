# $OpenBSD: Makefile,v 1.87 2013/04/02 16:41:21 ajacoutot Exp $

ONLY_FOR_ARCHS= amd64 i386

COMMENT-main=	multi-platform productivity suite
COMMENT-kde=	optional integration of LibreOffice to the KDE environment
COMMENT-java=	optional integration of LibreOffice java features

BV=		3.6
VERSION=	3.6.5.2
DISTNAME=	libreoffice-${VERSION}
WRKDIST=	${WRKDIR}/libreoffice-core-${VERSION}
PKGNAME=	libreoffice-${VERSION}
PKGNAME-main=	libreoffice-${VERSION}
PKGNAME-kde=	libreoffice-kde-${VERSION}
PKGNAME-java=	libreoffice-java-${VERSION}
CATEGORIES=	editors productivity
DPB_PROPERTIES=	parallel

REVISION-main =	1

SHARED_LIBS +=  lcms2                     2.3 # 2.3

EPOCH=		0

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.libreoffice.org/

MASTER_SITES=	http://download.documentfoundation.org/libreoffice/src/${VERSION:C/^([0-9]+\.[0-9]+\.[0-9]+).*/\1/}/ \
		http://humppa.hu/libreoffice/ \
		http://download.go-oo.org/src/
MASTER_SITES0=	http://hg.services.openoffice.org/binaries/ \
		http://download.go-oo.org/src/ \
		http://download.go-oo.org/extern/ \
		http://www.numbertext.org/linux/ \
		http://ooo.itc.hu/oxygenoffice/download/libreoffice/ \
		http://dev-www.libreoffice.org/src/

TAR=		${LOCALBASE}/bin/gtar
EDISTFILES=	libreoffice-core-${VERSION}.tar.xz

COMPONENTS=	binfilter dictionaries help translations

.for _dfile in ${COMPONENTS}
EDISTFILES+=	libreoffice-${_dfile}-${VERSION}.tar.xz
.endfor
EXTRACT_ONLY=	${EDISTFILES:C/:[0-9]$//}

DISTFILES+=	${EDISTFILES} \
		327348d67c979c88c2dec59a23a17d85-lcms2-2.3.tar.gz:0 \
		86261f06c097d3e425a2f6d0b0635380-hyphen-2.8.3.tar.gz:0 \
		6097739c841f671cb21332b9cc593ae7-libexttextcat-3.3.1.tar.bz2:0 \
		e7a384790b13c29113e22e596ade9687-LinLibertineG-20120116.zip:0 \
		35efabc239af896dfb79be7ebdd6e6b9-gentiumbasic-fonts-1.10.zip:0 \
		cfbf1ac6f61bf6cf45342a0cc9381be5-liberation-fonts-ttf-2.00.0.tar.gz:0 \
		0be45d54cc5e1c2e3102e32b8c190346-liberation-fonts-ttf-1.07.1.tar.gz:0 \
		f872f4ac066433d8ff92f5e316b36ff9-dejavu-fonts-ttf-2.33.zip:0 \
		bd30e9cf5523cdfc019b94f5e1d7fd19-cppunit-1.12.1.tar.gz:0 \
		e1e255dc43dbcbb34cb19e8a0eba90ae-mythes-1.2.2.tar.gz:0 \
		ea91f2fb4212a21d708aced277e6e85a-vigra1.4.0.tar.gz:0 \
		c01351d7db2b205de755d58769288224-libwpd-0.9.4.tar.bz2:0 \
		d197bd6211669a2fa4ca648faf04bcb1-libwps-0.2.7.tar.bz2:0 \
		9d283e02441d8cebdcd1e5d9df227d67-libwpg-0.2.1.tar.bz2:0 \
		94e7f271e38c976462558b4278590178-libvisio-0.0.19.tar.bz2:0 \
		3c0037fb07dea2f0bbae8386fa7c6a9a-libcdr-0.0.9.tar.bz2:0 \
		1756c4fa6c616ae15973c104cd8cb256-Adobe-Core35_AFMs-314.tar.gz:0 \
		9f9e15966b5624834157fe3d748312bc-mdds_0.6.1.tar.bz2:0 \
		26b3e95ddf3d9c077c480ea45874b3b8-lp_solve_5.5.tar.gz:0 \
		17410483b5b5f267aa18b7e00b65e6e0-hsqldb_1_8_0.zip:0 \
		2a177023f9ea8ec8bd00837605c5df1b-jakarta-tomcat-5.0.30-src.tar.gz:0 \
		a7983f859eafb2677d7ff386a023bc40-xsltml_2.1.2.zip:0 \
		ada24d37d8d638b3d8a9985e80bc2978-source-9.0.0.7-bj.zip:0 \
		0d2dcdfbf28d6208751b33057f5361f0-libcmis-0.2.3.tar.gz:0 \
		af3c3acf618de6108d65fcdc92b492e1-commons-codec-1.3-src.tar.gz:0 \
		3c219630e4302863a9a83d0efde889db-commons-logging-1.1.1-src.tar.gz:0 \
		2ae988b339daec234019a7066f96733e-commons-lang-2.3-src.tar.gz:0 \
		2c9b0f83ed5890af02c0df1c1776f39b-commons-httpclient-3.1-src.tar.gz:0 \
		eeb2c7ddf0d302fba4bfc6e97eac9624-libbase-1.1.6.zip:0 \
		39bb3fcea1514f1369fcfc87542390fd-sacjava-1.3.zip:0 \
		8ce2fcd72becf06c41f7201d15373ed9-librepository-1.1.6.zip:0 \
		3404ab6b1792ae5f16bbd603bd1e1d03-libformula-1.1.7.zip:0 \
		f94d9870737518e3b597f9265f4e9803-libserializer-1.1.6.zip:0 \
		d8bd5eed178db6e2b18eeed243f85aa8-flute-1.1.6.zip:0 \
		97b2d4dba862397f446b217e2b623e71-libloader-1.1.6.zip:0 \
		3bdf40c0d199af31923e900d082ca2dd-libfonts-1.1.6.zip:0 \
		db60e4fde8dd6d6807523deb71ee34dc-liblayout-0.2.10.zip:0 \
		ba2930200c9f019c2d93a8c88c651a0f-flow-engine-0.9.4.zip:0 \
		ace6ab49184e329db254e454a010f56d-libxml-1.1.7.zip:0

DIST_SUBDIR=	libreoffice

PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=		-main -kde

PSEUDO_FLAVORS=	parallel no_lang
FLAVORS=	debug no_java
FLAVOR?=

.if !${FLAVOR:Mno_java}
MULTI_PACKAGES+=	-java
.endif

.if !${FLAVOR:Mno_lang}
LANGS=			ar bg ca de es fa fi fr hu it \
			lt lv nl pl pt-BR ru sl sv

CONFIGURE_ARGS+=	--with-lang="en-US ${LANGS}"
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
		devel/gperf \
		shells/bash \
		archivers/p5-Archive-Zip \
		boost->=1.41.0:devel/boost \
		misc/findutils \
		sysutils/coreutils \
		textproc/gsed \
		textproc/clucene \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

# configure checks for cups, librsvg support; no LIB/RUN_DEPENDS because libcups
# and librsvg is only dlopen()ed if found
BUILD_DEPENDS +=	print/cups,-libs \
			x11/gnome/librsvg

MODULES+=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

MODULES+=	lang/python \
		devel/gettext

LIB_DEPENDS-main=x11/gtk+2 \
		${MODPY_LIB_DEPENDS} \
		databases/postgresql \
		databases/db/v4 \
		lang/gcc/4.6,-estdc>=4.6,<4.7 \
		textproc/libxslt \
		net/curl \
		net/neon \
		textproc/icu4c \
		textproc/raptor \
		textproc/redland \
		textproc/hunspell \
		print/poppler

WANTLIB-main=	estdc++ gdk-x11-2.0>=400.14 gtk-x11-2.0>=400.14 \
		db>=4 xslt>=3 curl>=7 neon>=24 pq>=2 \
		icuuc>=0 icui18n icule \
		raptor2 rasqal rdf>=0 poppler
WANTLIB-main+=	ICE SM X11 Xcomposite Xcursor Xdamage \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		crypto expat fontconfig freetype gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread pthread-stubs ssl xcb xml2 z gdk_pixbuf-2.0 \
		util ${MODGETTEXT_WANTLIB}
WANTLIB-main+=	GL xcb-render xcb-shm
WANTLIB-main+=	hunspell-1.3 gdk_pixbuf_xlib-2.0
WANTLIB-main+=	idn
WANTLIB-main+=	${MODPY_WANTLIB}

RUN_DEPENDS-main=	devel/desktop-file-utils \
			misc/shared-mime-info \
			textproc/clucene \
			x11/gtk+2,-guic

MODULES+=		x11/qt3
RUN_DEPENDS-kde=	editors/libreoffice
LIB_DEPENDS-kde=	${MODQT_LIB_DEPENDS} \
			lang/gcc/4.6,-estdc>=4.6,<4.7 \
			x11/kde/libs3
WANTLIB-kde=		${MODQT_WANTLIB} \
			X11 c estdc++ m pthread \
			lib/kde3/kabc lib/kde3/kdecore \
			lib/kde3/kdeui lib/kde3/kio
WANTLIB-kde+=		ICE SM Xext icule icuuc

.if !${FLAVOR:Mno_java}
MODULES+=		java
MODJAVA_VER=		1.6
MODJAVA_JRERUN=		Yes
.endif
LIB_DEPENDS-java=	lang/gcc/4.6,-estdc>=4.6,<4.7
RUN_DEPENDS-java=	${MODJAVA_RUN_DEPENDS} \
			databases/db/v4,-java \
			editors/libreoffice \
			java/javaPathHelper
WANTLIB-java=		c estdc++ m pthread

USE_GMAKE=	Yes
NO_TEST=	Yes
VMEM_WARNING=	Yes

PATCHORIG=	.orig.port

CONFIGURE_STYLE=	gnu
CONFIGURE_SCRIPT=	autogen.sh
AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.12

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		QTINC="${MODQT_INCDIR}" QTDIR="${MODQT_LIBDIR}" \
		KDEDIR="${LOCALBASE}" \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

MAKE_ENV+=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1

CONFIGURE_ARGS+=--disable-build-mozilla \
		--disable-ccache \
		--disable-dbus \
		--disable-epm \
		--disable-fetch-external \
		--disable-gconf \
		--disable-gnome-vfs \
		--disable-kde4 \
		--disable-mozilla \
		--disable-lockdown \
		--disable-odk \
		--disable-opengl \
		--disable-randr-link \
		--disable-unix-qstart-libpng \
		--disable-xmlsec \
		--enable-librsvg \
		--enable-binfilter \
		--enable-gio \
		--enable-gstreamer \
		--enable-kde \
		--enable-ext-presenter-minimizer \
		--enable-ext-pdfimport \
		--enable-ext-presenter-console \
		--enable-ext-report-builder \
		--enable-systray \
		--with-alloc=system \
		--with-compat-oowrappers \
		--with-external-tar=${DISTDIR}/libreoffice \
		--with-fonts \
		--with-myspell-dicts \
		--with-system-clucene \
		--with-system-libxml \
		--with-system-boost \
		--with-system-cairo \
		--with-system-curl \
		--with-system-db \
		--with-system-expat \
		--with-system-hunspell \
		--with-system-icu \
		--with-system-jars \
		--with-system-jpeg \
		--with-system-mesa-headers \
		--with-system-neon \
		--with-system-openssl \
		--with-system-poppler \
		--with-system-postgresql \
		--with-system-redland \
		--with-system-stdlibs \
		--with-system-zlib \
		--with-vendor="The OpenBSD project" \
		--without-junit \
		--without-krb5 \
		--without-openldap \
		--without-system-apache-commons \
		--without-system-beanshell \
		--without-system-cppunit \
		--without-system-hsqldb \
		--without-system-jfreereport \
		--without-system-libwpd \
		--without-system-mozilla \
		--without-system-saxon \
		--without-system-servlet-api \
		--without-unix-wrapper

.if !${FLAVOR:Mno_java}
BUILD_DEPENDS+=	devel/apache-ant

CONFIGURE_ARGS+=--enable-ext-wiki-publisher \
		--with-java \
		--with-java-target-version=1.5 \
		--with-jdk-home=${JAVA_HOME} \
		--with-ant-home=${LOCALBASE}/ant
.else
CONFIGURE_ARGS+=--without-java
.endif

.if ${FLAVOR:Mparallel}
NCPU!=		echo $$((`sysctl -n hw.ncpu`+1))
.else
NCPU=		0
.endif
CONFIGURE_ARGS+=--with-num-cpus=${NCPU}

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=--enable-debug \
		--enable-symbols
.endif

MAKE_ENV+=	PYTHON="${MODPY_BIN}" verbose=f

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
	@ln -fs /usr/local/bin/gsed ${WRKDIR}/bin/sed
.for _c in ${COMPONENTS}
	rm -rf ${WRKDIR}/libreoffice-${_c}-${VERSION}/git*
	rm -rf ${WRKDIR}/libreoffice-${_c}-${VERSION}/.*
	mv ${WRKDIR}/libreoffice-${_c}-${VERSION}/* ${WRKSRC}
	rmdir ${WRKDIR}/libreoffice-${_c}-${VERSION}
.endfor
	touch ${WRKSRC}/src.downloaded ${WRKSRC}/autogen.lastrun

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

	for _d in calc draw impress math \
		qstart startcenter writer; do \
		perl -pi -e "s,Icon=libreoffice${BV}-,Icon=libreoffice-,g" \
			${PREFIX}/lib/libreoffice/share/xdg/$${_d}.desktop && \
		ln -sf ${TRUEPREFIX}/lib/libreoffice/share/xdg/$${_d}.desktop \
			${PREFIX}/share/applications/$${_d}.desktop; done

	cp -R ${WRKSRC}/sysui/desktop/icons/hicolor ${PREFIX}/share/icons
	for _f in `find ${PREFIX}/share/icons/*/*/apps -type f`; \
		do mv $${_f} `echo $${_f} | sed "s,apps/,apps/libreoffice-,g"`; done

	${INSTALL_DATA} ${WRKSRC}/sysui/unxobsd.pro/misc/libreoffice/openoffice.org.xml \
		${PREFIX}/share/mime/packages

.include <bsd.port.mk>
