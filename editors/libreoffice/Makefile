# $OpenBSD: Makefile,v 1.226 2020/03/21 19:11:28 robert Exp $

USE_WXNEEDED=	Yes

ONLY_FOR_ARCHS= amd64 i386

COMMENT-main=	multi-platform productivity suite
COMMENT-kde=	optional integration of LibreOffice to the KDE environment
COMMENT-java=	optional integration of LibreOffice java features

SHARED_LIBS +=  etonyek-0.1-lo            1.9 # 1.9
SHARED_LIBS +=  langtag-lo                5.1 # 5.1
SHARED_LIBS +=  mwaw-0.3-lo               3.15 # 3.15
SHARED_LIBS +=  odfgen-0.1-lo             1.6 # 1.6
SHARED_LIBS +=  orcus-0.15                0.0 # 0.0
SHARED_LIBS +=  orcus-parser-0.15         0.0 # 0.0
SHARED_LIBS +=  revenge-0.0-lo            0.4 # 0.4
SHARED_LIBS +=  staroffice-0.0-lo         0.0 # 0.0
SHARED_LIBS +=  uno_cppu                  3.0 # 3.0
SHARED_LIBS +=  uno_cppuhelpergcc3        3.0 # 3.0
SHARED_LIBS +=  uno_purpenvhelpergcc3     3.0 # 3.0
SHARED_LIBS +=  uno_sal                   3.0 # 3.0
SHARED_LIBS +=  uno_salhelpergcc3         3.0 # 3.0
SHARED_LIBS +=  wpd-0.10-lo               10.3 # 10.3
SHARED_LIBS +=  wpg-0.3-lo                3.3 # 3.3
SHARED_LIBS +=  wps-0.4-lo                4.10 # 4.10

BV=		6.4
VERSION=	${BV}.2.2
DISTNAME=	libreoffice-${VERSION}
WRKDIST=	${WRKDIR}/libreoffice-${VERSION}
PKGNAME=	libreoffice-${VERSION}
PKGNAME-main=	libreoffice-${VERSION}
PKGNAME-kde=	libreoffice-kde-${VERSION}
PKGNAME-java=	libreoffice-java-${VERSION}
CATEGORIES=	editors productivity
DPB_PROPERTIES=	parallel

EPOCH=		0

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.libreoffice.org/

MASTER_SITES=	http://download.documentfoundation.org/libreoffice/src/${VERSION:C/^([0-9]+\.[0-9]+\.[0-9]+).*/\1/}/ \
		http://humppa.hu/libreoffice/ \
		http://download.go-oo.org/src/
MASTER_SITES0=	http://dev-www.libreoffice.org/src/ \
		http://dev-www.libreoffice.org/extern/ \
		http://hg.services.openoffice.org/binaries/ \
		http://download.go-oo.org/src/ \
		http://download.go-oo.org/extern/ \
		http://www.numbertext.org/linux/ \
		http://ooo.itc.hu/oxygenoffice/download/libreoffice/
MASTER_SITES1=	http://dev-www.libreoffice.org/src/libgltf/

TAR=		${LOCALBASE}/bin/gtar
EDISTFILES=	libreoffice-${VERSION}.tar.xz

COMPONENTS=	dictionaries help translations

.for _dfile in ${COMPONENTS}
EDISTFILES+=	libreoffice-${_dfile}-${VERSION}.tar.xz
.endfor
EXTRACT_ONLY=	${EDISTFILES:C/:[0-9]$//}

DISTFILES += ${EDISTFILES}
DISTFILES += 0168229624cfac409e766913506961a8-ucpp-1.3.2.tar.gz:0
DISTFILES += liberation-fonts-ttf-2.00.4.tar.gz:0
DISTFILES += liberation-narrow-fonts-ttf-1.07.6.tar.gz:0
DISTFILES += source-serif-font-2.007R.tar.gz:0
DISTFILES += source-serif-pro-3.000R.tar.gz:0
DISTFILES += 884ed41809687c3e168fc7c19b16585149ff058eca79acbf3ee784f6630704cc-opens___.ttf:0
DISTFILES += 1725634df4bb3dcb1b2c91a6175f8789-GentiumBasic_1102.zip:0
DISTFILES += 17410483b5b5f267aa18b7e00b65e6e0-hsqldb_1_8_0.zip:0
DISTFILES += 26b3e95ddf3d9c077c480ea45874b3b8-lp_solve_5.5.tar.gz:0
DISTFILES += 33e1e61fab06a547851ed308b4ffef42-dejavu-fonts-ttf-2.37.zip:0
DISTFILES += 3404ab6b1792ae5f16bbd603bd1e1d03-libformula-1.1.7.zip:0
DISTFILES += 35c94d2df8893241173de1d16b6034c0-swingExSrc.zip:0
DISTFILES += 368f114c078f94214a308a74c7e991bc-crosextrafonts-20130214.tar.gz:0
DISTFILES += 39bb3fcea1514f1369fcfc87542390fd-sacjava-1.3.zip:0
DISTFILES += 3bdf40c0d199af31923e900d082ca2dd-libfonts-1.1.6.zip:0
DISTFILES += 5ade6ae2a99bc1e9e57031ca88d36dad-hyphen-2.8.8.tar.gz:0
DISTFILES += 5c781723a0d9ed6188960defba8e91cf-liberation-fonts-ttf-2.00.1.tar.gz:0
DISTFILES += 798b2ffdc8bcfe7bca2cf92b62caf685-rhino1_5R5.zip:0
DISTFILES += 7a15edea7d415ac5150ea403e27401fd-open-sans-font-ttf-1.10.tar.gz:0
DISTFILES += xmlsec1-1.2.28.tar.gz:0
DISTFILES += lxml-4.1.1.tgz:0
DISTFILES += 8ce2fcd72becf06c41f7201d15373ed9-librepository-1.1.6.zip:0
DISTFILES += 907d6e99f241876695c19ff3db0b8923-source-code-pro-2.030R-ro-1.050R-it.tar.gz:0
DISTFILES += 97b2d4dba862397f446b217e2b623e71-libloader-1.1.6.zip:0
DISTFILES += EmojiOneColor-SVGinOT-1.3.tar.gz:0
DISTFILES += a7983f859eafb2677d7ff386a023bc40-xsltml_2.1.2.zip:0
DISTFILES += a8c2c5b8f09e7ede322d5c602ff6a4b6-mythes-1.2.4.tar.gz:0
DISTFILES += ace6ab49184e329db254e454a010f56d-libxml-1.1.7.zip:0
DISTFILES += alef-1.001.tar.gz:0
DISTFILES += amiri-0.109.zip:0
DISTFILES += ba2930200c9f019c2d93a8c88c651a0f-flow-engine-0.9.4.zip:0
DISTFILES += beeca87be45ec87d241ddd0e1bad80c1-bsh-2.0b6-src.zip:0
DISTFILES += c3c1a8ba7452950636e871d25020ce0d-pt-serif-font-1.0000W.tar.gz:0
DISTFILES += c74b7223abe75949b4af367942d96c7a-crosextrafonts-carlito-20130920.tar.gz:0
DISTFILES += commons-logging-1.2-src.tar.gz:0
DISTFILES += cppunit-1.14.0.tar.gz:0
DISTFILES += d8bd5eed178db6e2b18eeed243f85aa8-flute-1.1.6.zip:0
DISTFILES += db60e4fde8dd6d6807523deb71ee34dc-liblayout-0.2.10.zip:0
DISTFILES += e7a384790b13c29113e22e596ade9687-LinLibertineG-20120116.zip:0
DISTFILES += edc4d741888bc0d38e32dbaa17149596-source-sans-pro-2.010R-ro-1.065R-it.tar.gz:0
DISTFILES += eeb2c7ddf0d302fba4bfc6e97eac9624-libbase-1.1.6.zip:0
DISTFILES += f94d9870737518e3b597f9265f4e9803-libserializer-1.1.6.zip:0
DISTFILES += language-subtag-registry-2019-09-16.tar.bz2:0
DISTFILES += libabw-0.1.3.tar.xz:0
DISTFILES += libcdr-0.1.5.tar.xz:0
DISTFILES += libcdr-0.1.3.tar.bz2:0
DISTFILES += libcmis-0.5.2.tar.xz:0
DISTFILES += libe-book-0.1.3.tar.xz:0
DISTFILES += libepubgen-0.1.1.tar.xz:0
DISTFILES += libetonyek-0.1.9.tar.xz:0
DISTFILES += libexttextcat-3.4.5.tar.xz:0
DISTFILES += libfreehand-0.1.2.tar.xz:0
DISTFILES += libgltf-0.0.2.tar.bz2:1
DISTFILES += liblangtag-0.6.2.tar.bz2:0
DISTFILES += libmspub-0.1.4.tar.xz:0
DISTFILES += libmwaw-0.3.15.tar.xz:0
DISTFILES += libodfgen-0.1.6.tar.bz2:0
DISTFILES += liborcus-0.15.3.tar.gz:0
DISTFILES += libre-hebrew-1.0.tar.gz:0
DISTFILES += ttf-kacst_2.01+mry.tar.gz:0
DISTFILES += culmus-0.131.tar.gz:0
DISTFILES += libpagemaker-0.0.4.tar.xz:0
DISTFILES += libqxp-0.0.2.tar.xz:0
DISTFILES += librevenge-0.0.4.tar.bz2:0
DISTFILES += libstaroffice-0.0.6.tar.xz:0
DISTFILES += libvisio-0.1.7.tar.xz:0
DISTFILES += libwpd-0.10.3.tar.xz:0
DISTFILES += libwpg-0.3.3.tar.xz:0
DISTFILES += libwps-0.4.10.tar.xz:0
DISTFILES += libwps-0.4.8.tar.xz:0
DISTFILES += libzmf-0.0.2.tar.xz:0
DISTFILES += mdds-1.5.0.tar.bz2:0
DISTFILES += pdfium-3963.tar.bz2:0
DISTFILES += noto-fonts-20171024.tar.gz:0
DISTFILES += ReemKufi-0.7.zip:0
DISTFILES += Scheherazade-2.100.zip:0
DISTFILES += Amiri-0.111.zip:0
DISTFILES += QR-Code-generator-1.4.0.tar.gz:0

DIST_SUBDIR=	libreoffice

PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -java -kde

PSEUDO_FLAVORS=	no_lang
FLAVORS=	debug no_java
FLAVOR?=

.if !${FLAVOR:Mno_lang}
LANGS=			ar bg ca de es fa fi fr hu it \
			kk lt lv nl pl pt-BR ru sl sv

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
		databases/db/v4 \
		devel/bison \
		devel/cppunit \
		devel/gettext,-tools \
		devel/gpatch \
		devel/gperf \
		devel/libexecinfo \
		graphics/glew \
		graphics/glm \
		shells/bash \
		archivers/p5-Archive-Zip \
		misc/findutils \
		security/nss \
		sysutils/coreutils \
		textproc/clucene \
		textproc/gsed \
		x11/gtk+3 \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

# configure checks for librsvg support; no LIB/RUN_DEPENDS because it is only
# dlopen()ed if found
BUILD_DEPENDS +=	x11/gnome/librsvg

COMPILER =		base-clang ports-gcc base-gcc

MODULES+=	lang/python

# XXX can't use ${MODPY_DEFAULT_VERSION_3}, it specifically wants 3.3 and
# will try (and fail) to build its own copy if not available.
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}


LIB_DEPENDS-main=databases/openldap \
		databases/mariadb \
		databases/postgresql \
		devel/boost \
		devel/harfbuzz,-icu \
		devel/pango \
		graphics/lcms2 \
		graphics/graphite2 \
		${MODGCC4_CPPLIBDEP} \
		print/cups,-libs \
		print/poppler \
		textproc/libxslt \
		textproc/raptor \
		net/curl \
		net/neon \
		textproc/icu4c \
		textproc/redland \
		textproc/hunspell

WANTLIB-main=	${COMPILER_LIBCXX}
WANTLIB-main+=	xslt>=3 curl>=7 neon>=24 pq>=2 icuuc>=0 icui18n rdf>=0
WANTLIB-main+=	ICE SM X11
WANTLIB-main+=	Xext Xrandr Xrender atk-1.0 c cairo
WANTLIB-main+=	crypto expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB-main+=	gobject-2.0 iconv intl util
WANTLIB-main+=	jpeg m pthread ssl xml2 z gdk_pixbuf-2.0 poppler
WANTLIB-main+=	pango-1.0 pangocairo-1.0 hunspell-1.6
WANTLIB-main+=	clucene-contribs-lib clucene-core clucene-shared
WANTLIB-main+=	cups exslt lcms2 raptor2 harfbuzz harfbuzz-icu
WANTLIB-main+=	nspr4 nss3 nssutil3 plc4 plds4 smime3 ssl3
WANTLIB-main+=	lzma cairo-gobject gmodule-2.0 dconf gdk-3 gtk-3
WANTLIB-main+=	bz2 graphite2 epoxy mariadb png boost_locale-mt
WANTLIB-main+=	boost_filesystem boost_filesystem-mt boost_iostreams-mt
WANTLIB-main+=	boost_system boost_system-mt boost_date_time-mt
WANTLIB-main+=	lber ldap python${MODPY_VERSION}m

RUN_DEPENDS-main=	devel/desktop-file-utils \
			devel/libexecinfo \
			devel/xdg-utils \
			graphics/glew \
			graphics/glm \
			${MODPY_RUN_DEPENDS} \
			misc/shared-mime-info \
			security/nss \
			textproc/clucene \
			x11/gtk+3 \
			x11/gtk+3,-guic

MODULES+=		x11/qt5
RUN_DEPENDS-kde=	editors/libreoffice
LIB_DEPENDS-kde=	devel/kf5/kcoreaddons \
			devel/kf5/kio \
			${MODQT_LIB_DEPENDS} \
			${MODGCC4_CPPLIBDEP}
WANTLIB-kde+=		icuuc ${COMPILER_LIBCXX} m pthread xcb xcb-icccm
WANTLIB-kde+=		cairo graphite2 epoxy harfbuzz harfbuzz-icu
WANTLIB-kde+=		KF5ConfigCore KF5CoreAddons KF5I18n KF5KIOCore
WANTLIB-kde+=		KF5KIOFileWidgets KF5KIOWidgets KF5WindowSystem
WANTLIB-kde+=		Qt5Core Qt5Gui Qt5Network Qt5Widgets Qt5X11Extras

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-java}
MODULES+=		java
MODJAVA_VER=		1.8+
.endif
LIB_DEPENDS-java=	${MODGCC4_CPPLIBDEP}
RUN_DEPENDS-java=	${MODJAVA_RUN_DEPENDS} \
			databases/db/v4,-java \
			editors/libreoffice \
			java/javaPathHelper
WANTLIB-java=		c ${COMPILER_LIBCXX} m pthread

USE_GMAKE=	Yes
NO_TEST=	Yes

PATCHORIG=	.orig.port

CONFIGURE_STYLE=	gnu

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.12

CONFIGURE_ENV=	CONFIG_SHELL=${LOCALBASE}/bin/bash \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		KDE5INC="${LOCALBASE}/include/kde4" KDE5LIB="${LOCALBASE}/lib/kde5/libs"\
		KF5INC="${LOCALBASE}/include" KF5LIB="${LOCALBASE}/lib" \
		QT5DIR="${LOCALBASE}/lib/qt5" QT5LIB="${LOCALBASE}/qt5" \
		QT5INC="${LOCALBASE}/include/X11/qt5" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS+=\
		--disable-coinmp \
		--disable-ccache \
		--disable-dbus \
		--disable-epm \
		--disable-fetch-external \
		--disable-odk \
		--disable-firebird-sdbc \
		--disable-dependency-tracking \
		--disable-online-update \
		--disable-libnumbertext \
		--enable-mergelibs \
		--enable-gio \
		--enable-kf5 \
		--enable-qt5 \
		--enable-release-build \
		--enable-cairo-canvas \
		--with-compat-oowrappers \
		--with-external-tar=${DISTDIR}/libreoffice \
		--with-fonts \
		--with-myspell-dicts \
		--with-system-harfbuzz \
		--with-system-clucene \
		--without-system-cppunit \
		--with-system-libxml \
		--with-system-boost \
		--with-system-cairo \
		--with-system-curl \
		--with-system-expat \
		--with-system-epoxy \
		--with-system-graphite \
		--with-system-glm \
		--with-system-hunspell \
		--with-system-icu \
		--with-system-jars \
		--with-system-jpeg \
		--with-system-lcms2 \
		--with-system-libpng \
		--with-system-mariadb \
		--with-system-neon \
		--with-system-nss \
		--with-system-openldap \
		--with-system-openssl \
		--with-system-poppler \
		--with-system-postgresql \
		--with-system-redland \
		--with-system-zlib \
		--with-vendor="The OpenBSD project" \
		--with-tls="openssl" \
		--without-junit \
		--without-krb5 \
		--without-gssapi \
		--without-system-apache-commons \
		--without-system-beanshell \
		--without-system-hsqldb \
		--without-system-jfreereport \
		--without-system-libwpd \
		--without-system-orcus

.if ${BUILD_PACKAGES:M-java}
BUILD_DEPENDS+=	devel/apache-ant

CONFIGURE_ARGS+=--enable-ext-wiki-publisher \
		--with-java \
		--with-jdk-home=${JAVA_HOME} \
		--with-ant-home=${LOCALBASE}/ant
.else
CONFIGURE_ARGS+=--without-java
.endif

# XXX libreoffice has its own way to build things in parallel
PARALLEL_MAKE_FLAGS =
CONFIGURE_ARGS+=--with-parallelism=${MAKE_JOBS}

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=--enable-debug
.endif

MAKE_ENV+=	PYTHON="${MODPY_BIN}" verbose=f \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

.if ${MACHINE_ARCH} == "i386"
OA=		x86
.elif ${MACHINE_ARCH} == "amd64"
OA=		x86_64
.endif

SUBST_VARS+=	BV OA MODPY_DEFAULT_VERSION_3

pre-patch:
	@ln -fs /bin/md5 ${WRKDIR}/bin/md5sum
	@ln -fs /usr/local/bin/gsed ${WRKDIR}/bin/sed
	@ln -fs /usr/local/bin/gfind ${WRKDIR}/bin/find
	@ln -fs /usr/local/bin/gpatch ${WRKDIR}/bin/patch
	@ln -fs /usr/local/bin/gcat ${WRKDIR}/bin/cat
	@ln -fs /usr/local/bin/gtouch ${WRKDIR}/bin/touch
	touch ${WRKSRC}/src.downloaded ${WRKSRC}/autogen.lastrun

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/shell/source/unix/exec/shellexec.cxx \
		${WRKSRC}/shell/source/unix/misc/senddoc.sh

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

	# no symlink because update-desktop-database(1) is unveil'ed
	for _d in calc draw impress math \
		startcenter writer; do \
		sed -i "s,Icon=libreoffice${BV}-,Icon=libreoffice-,g" \
			${PREFIX}/lib/libreoffice/share/xdg/$${_d}.desktop && \
		cp ${PREFIX}/lib/libreoffice/share/xdg/$${_d}.desktop \
			${PREFIX}/share/applications/$${_d}.desktop; done

	cp -R ${WRKSRC}/sysui/desktop/icons/hicolor ${PREFIX}/share/icons
	for _f in `find ${PREFIX}/share/icons/*/*/apps -type f`; \
		do mv $${_f} `echo $${_f} | sed "s,apps/,apps/libreoffice-,g"`; done

	${INSTALL_DATA} ${WRKSRC}/workdir/CustomTarget/sysui/share/libreoffice/openoffice.org.xml \
		${PREFIX}/share/mime/packages

# If the -java package does not get build use stub libraries for
# libjvmaccesslo.so and libjvmfwklo.so so that they can get included
# in the -main package because they are needed even if the -java
# subpackage is not installed.
.if !${BUILD_PACKAGES:M-java}
	echo "int main(void) { return 0; }" > ${WRKSRC}/stub.c
	${CC} -shared -o ${WRKBUILD}/stub.o ${WRKSRC}/stub.c
.  for i in jvmaccess jvmfwk
	${INSTALL_PROGRAM} ${WRKBUILD}/stub.o \
		${PREFIX}/lib/libreoffice/program/lib${i}lo.so
.  endfor
.endif

.include <bsd.port.mk>
