USE_WXNEEDED=	Yes
USE_NOBTCFI=	Yes

ONLY_FOR_ARCHS= amd64 i386 aarch64

COMMENT-main=	multi-platform productivity suite
COMMENT-kde=	optional integration of LibreOffice to the KDE environment
COMMENT-java=	optional integration of LibreOffice java features

SHARED_LIBS +=  etonyek-0.1-lo            1.10 # 1.10
SHARED_LIBS +=  langtag-lo                5.1 # 5.1
SHARED_LIBS +=  mwaw-0.3-lo               3.21 # 3.21
SHARED_LIBS +=  odfgen-0.1-lo             1.8 # 1.8
SHARED_LIBS +=  orcus-0.18                0.0 # 0.0
SHARED_LIBS +=  orcus-parser-0.18         0.0 # 0.0
SHARED_LIBS +=  staroffice-0.0-lo         0.0 # 0.0
SHARED_LIBS +=  uno_cppu                  3.0 # 3.0
SHARED_LIBS +=  uno_cppuhelpergcc3        3.0 # 3.0
SHARED_LIBS +=  uno_purpenvhelpergcc3     3.0 # 3.0
SHARED_LIBS +=  uno_sal                   3.0 # 3.0
SHARED_LIBS +=  uno_salhelpergcc3         3.0 # 3.0
SHARED_LIBS +=  wpg-0.3-lo                3.4 # 3.4
SHARED_LIBS +=  wps-0.4-lo                4.14 # 4.14

BV=		24.2
VERSION=	${BV}.4.2
DISTNAME=	libreoffice-${VERSION}
WRKDIST=	${WRKDIR}/libreoffice-${VERSION}
CATEGORIES=	editors productivity
DPB_PROPERTIES=	parallel

EPOCH=		0

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.libreoffice.org/

SITES=		http://download.documentfoundation.org/libreoffice/src/${VERSION:C/^([0-9]+\.[0-9]+\.[0-9]+).*/\1/}/ \
		http://humppa.hu/libreoffice/ \
		http://download.go-oo.org/src/
SITES.a=	http://dev-www.libreoffice.org/src/ \
		http://dev-www.libreoffice.org/extern/ \
		http://hg.services.openoffice.org/binaries/ \
		http://download.go-oo.org/src/ \
		http://download.go-oo.org/extern/ \
		http://www.numbertext.org/linux/ \
		http://ooo.itc.hu/oxygenoffice/download/libreoffice/

TAR=		${LOCALBASE}/bin/gtar
EDISTFILES=	libreoffice-${VERSION}.tar.xz

COMPONENTS=	dictionaries help translations

.for _dfile in ${COMPONENTS}
EDISTFILES+=	libreoffice-${_dfile}-${VERSION}.tar.xz
.endfor
EXTRACT_ONLY=	${EDISTFILES:C/:[0-9]$//}

DISTFILES += ${EDISTFILES}
DISTFILES.a += 1725634df4bb3dcb1b2c91a6175f8789-GentiumBasic_1102.zip
DISTFILES.a += 17410483b5b5f267aa18b7e00b65e6e0-hsqldb_1_8_0.zip
DISTFILES.a += 26b3e95ddf3d9c077c480ea45874b3b8-lp_solve_5.5.tar.gz
DISTFILES.a += 33e1e61fab06a547851ed308b4ffef42-dejavu-fonts-ttf-2.37.zip
DISTFILES.a += 3404ab6b1792ae5f16bbd603bd1e1d03-libformula-1.1.7.zip
DISTFILES.a += 35c94d2df8893241173de1d16b6034c0-swingExSrc.zip
DISTFILES.a += 368f114c078f94214a308a74c7e991bc-crosextrafonts-20130214.tar.gz
DISTFILES.a += 39bb3fcea1514f1369fcfc87542390fd-sacjava-1.3.zip
DISTFILES.a += 3bdf40c0d199af31923e900d082ca2dd-libfonts-1.1.6.zip
DISTFILES.a += 48d647fbd8ef8889e5a7f422c1bfda94-clucene-core-2.3.3.4.tar.gz
DISTFILES.a += 5ade6ae2a99bc1e9e57031ca88d36dad-hyphen-2.8.8.tar.gz
DISTFILES.a += 798b2ffdc8bcfe7bca2cf92b62caf685-rhino1_5R5.zip
DISTFILES.a += 8ce2fcd72becf06c41f7201d15373ed9-librepository-1.1.6.zip
DISTFILES.a += 97b2d4dba862397f446b217e2b623e71-libloader-1.1.6.zip
DISTFILES.a += Amiri-1.000.zip
DISTFILES.a += Java-WebSocket-1.5.4.tar.gz
DISTFILES.a += NotoSans-v2.012.zip
DISTFILES.a += NotoKufiArabic-v2.109.zip
DISTFILES.a += NotoSansArabic-v2.010.zip
DISTFILES.a += NotoSansArmenian-v2.008.zip
DISTFILES.a += NotoSansGeorgian-v2.003.zip
DISTFILES.a += NotoSansHebrew-v2.004.zip
DISTFILES.a += NotoSansLao-v2.003.zip
DISTFILES.a += NotoSansLisu-v2.102.zip
DISTFILES.a += NotoSerif-v2.012.zip
DISTFILES.a += NotoSerifArmenian-v2.008.zip
DISTFILES.a += NotoSerifGeorgian-v2.003.zip
DISTFILES.a += NotoSerifHebrew-v2.004.zip
DISTFILES.a += NotoSerifLao-v2.003.zip
DISTFILES.a += NotoNaskhArabic-v2.016.zip
DISTFILES.a += ReemKufi-1.2.zip
DISTFILES.a += Scheherazade-2.100.zip
DISTFILES.a += a7983f859eafb2677d7ff386a023bc40-xsltml_2.1.2.zip
DISTFILES.a += ace6ab49184e329db254e454a010f56d-libxml-1.1.7.zip
DISTFILES.a += alef-1.001.tar.gz
DISTFILES.a += ba2930200c9f019c2d93a8c88c651a0f-flow-engine-0.9.4.zip
DISTFILES.a += beeca87be45ec87d241ddd0e1bad80c1-bsh-2.0b6-src.zip
DISTFILES.a += box2d-2.4.1.tar.gz
DISTFILES.a += c74b7223abe75949b4af367942d96c7a-crosextrafonts-carlito-20130920.tar.gz
DISTFILES.a += cppunit-1.15.1.tar.gz
DISTFILES.a += culmus-0.133.tar.gz
DISTFILES.a += d8bd5eed178db6e2b18eeed243f85aa8-flute-1.1.6.zip
DISTFILES.a += db60e4fde8dd6d6807523deb71ee34dc-liblayout-0.2.10.zip
DISTFILES.a += dragonbox-1.1.3.tar.gz
DISTFILES.a += dtoa-20180411.tgz
DISTFILES.a += e7a384790b13c29113e22e596ade9687-LinLibertineG-20120116.zip
DISTFILES.a += eeb2c7ddf0d302fba4bfc6e97eac9624-libbase-1.1.6.zip
DISTFILES.a += f543e6e2d7275557a839a164941c0a86e5f2c3f2a0042bfc434c88c6dde9e140-opens___.ttf
DISTFILES.a += f94d9870737518e3b597f9265f4e9803-libserializer-1.1.6.zip
DISTFILES.a += frozen-1.1.1.tar.gz
DISTFILES.a += language-subtag-registry-2024-05-16.tar.bz2
DISTFILES.a += libabw-0.1.3.tar.xz
DISTFILES.a += libcdr-0.1.7.tar.xz
DISTFILES.a += libcmis-0.6.1.tar.xz
DISTFILES.a += libe-book-0.1.3.tar.xz
DISTFILES.a += libepubgen-0.1.1.tar.xz
DISTFILES.a += liberation-fonts-ttf-2.1.4.tar.gz
DISTFILES.a += liberation-narrow-fonts-ttf-1.07.6.tar.gz
DISTFILES.a += libetonyek-0.1.10.tar.xz
DISTFILES.a += libexttextcat-3.4.6.tar.xz
DISTFILES.a += libfreehand-0.1.2.tar.xz
DISTFILES.a += liblangtag-0.6.7.tar.bz2
DISTFILES.a += libmspub-0.1.4.tar.xz
DISTFILES.a += libmwaw-0.3.21.tar.xz
DISTFILES.a += libnumbertext-1.0.11.tar.xz
DISTFILES.a += libodfgen-0.1.8.tar.xz
DISTFILES.a += liborcus-0.19.2.tar.xz
DISTFILES.a += libpagemaker-0.0.4.tar.xz
DISTFILES.a += libqxp-0.0.2.tar.xz
DISTFILES.a += libre-hebrew-1.0.tar.gz
DISTFILES.a += libstaroffice-0.0.7.tar.xz
DISTFILES.a += libvisio-0.1.7.tar.xz
DISTFILES.a += libwpg-0.3.4.tar.xz
DISTFILES.a += libwps-0.4.14.tar.xz
DISTFILES.a += libzmf-0.0.2.tar.xz
DISTFILES.a += mdds-2.1.1.tar.xz
DISTFILES.a += mythes-1.2.5.tar.xz
DISTFILES.a += noto-fonts-20171024.tar.gz
DISTFILES.a += pdfium-6179.tar.bz2
DISTFILES.a += phc-winner-argon2-20190702.tar.gz
DISTFILES.a += skia-m116-2ddcf183eb260f63698aa74d1bb380f247ad7ccd.tar.xz
DISTFILES.a += xmlsec1-1.3.2.tar.gz
DISTFILES.a += zxcvbn-c-2.5.tar.gz
DISTFILES.a += zxing-cpp-2.1.0.tar.gz

DIST_SUBDIR=	libreoffice

PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -java -kde

PSEUDO_FLAVORS=	no_lang
FLAVORS=	debug no_java
FLAVOR?=

.if !${FLAVOR:Mno_lang}
LANGS=			ar bg ca cs de el es fa fi fr hr hu it \
			ja kk lt lv nl pl pt-BR ro ru sl sv uk

CONFIGURE_ARGS+=	--with-lang="en-US ${LANGS}"
.for l in ${LANGS:L}
MULTI_PACKAGES+=	-i18n-$l
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

LIB_DEPENDS-main=databases/openldap \
		databases/mariadb \
		databases/postgresql \
		devel/boost \
		devel/harfbuzz,-icu \
		devel/pango \
		graphics/lcms2 \
		graphics/graphite2 \
		graphics/libwebp \
		graphics/tiff \
		${MODGCC4_CPPLIBDEP} \
		multimedia/gstreamer1/plugins-base \
		print/cups,-libs \
		print/poppler \
		textproc/libwpd \
		textproc/libxslt \
		textproc/raptor \
		net/curl \
		textproc/icu4c \
		textproc/redland \
		textproc/hunspell

WANTLIB-main=	${COMPILER_LIBCXX}
WANTLIB-main+=	xslt>=3 curl>=7 pq>=2 icuuc>=0 icui18n rdf>=0
WANTLIB-main+=	ICE SM X11
WANTLIB-main+=	Xext Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB-main+=	crypto expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB-main+=	gobject-2.0 iconv intl util
WANTLIB-main+=	jpeg m pthread ssl xml2 z gdk_pixbuf-2.0 poppler
WANTLIB-main+=	pango-1.0 pangocairo-1.0 hunspell-1.7
WANTLIB-main+=	clucene-contribs-lib clucene-core clucene-shared
WANTLIB-main+=	cups exslt lcms2 raptor2 harfbuzz harfbuzz-icu
WANTLIB-main+=	nspr4 nss3 nssutil3 plc4 plds4 smime3 ssl3
WANTLIB-main+=	lzma cairo-gobject gmodule-2.0 dconf gdk-3 gtk-3
WANTLIB-main+=	bz2 graphite2 epoxy mariadb png boost_locale-mt
WANTLIB-main+=	boost_filesystem boost_iostreams-mt
WANTLIB-main+=	boost_system boost_system-mt boost_date_time-mt
WANTLIB-main+=	lber ldap ${MODPY_WANTLIB}
WANTLIB-main+=	X11-xcb
WANTLIB-main+=	gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gstpbutils-1.0
WANTLIB-main+=	gstvideo-1.0
WANTLIB-main+=	poppler-cpp
WANTLIB-main+=	tiff webp revenge-0.0 wpd-0.10

RUN_DEPENDS-main=	devel/desktop-file-utils \
			devel/xdg-utils \
			graphics/glew \
			${MODPY_RUN_DEPENDS} \
			misc/shared-mime-info \
			security/nss \
			textproc/clucene \
			x11/gtk+3 \
			x11/gtk+4,-guic

MODULES+=		x11/qt5
LIB_DEPENDS-kde=	devel/kf5/kcoreaddons \
			devel/kf5/kio \
			editors/libreoffice \
			${MODQT_LIB_DEPENDS} \
			${MODGCC4_CPPLIBDEP}
WANTLIB-kde+=		icuuc ${COMPILER_LIBCXX} m pthread xcb
WANTLIB-kde+=		cairo graphite2 epoxy harfbuzz harfbuzz-icu
WANTLIB-kde+=		KF5ConfigCore KF5CoreAddons KF5I18n KF5KIOCore
WANTLIB-kde+=		KF5KIOFileWidgets KF5KIOWidgets KF5WindowSystem
WANTLIB-kde+=		Qt5Core Qt5Gui Qt5Network Qt5Widgets Qt5X11Extras
WANTLIB-kde+=		glib-2.0 gobject-2.0 intl
WANTLIB-kde+=		lib/libreoffice/program/uno_cppu \
			lib/libreoffice/program/uno_cppuhelpergcc3 \
			lib/libreoffice/program/uno_sal \
			lib/libreoffice/program/uno_salhelpergcc3

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-java}
MODULES+=		java
MODJAVA_VER=		17+
.endif
LIB_DEPENDS-java=	${MODGCC4_CPPLIBDEP} \
			editors/libreoffice
RUN_DEPENDS-java=	${MODJAVA_RUN_DEPENDS} \
			databases/db/v4,-java \
			java/javaPathHelper
WANTLIB-java=		c ${COMPILER_LIBCXX} m pthread
WANTLIB-java+=		lib/libreoffice/program/uno_cppu \
			lib/libreoffice/program/uno_cppuhelpergcc3 \
			lib/libreoffice/program/uno_sal \
			lib/libreoffice/program/uno_salhelpergcc3

USE_GMAKE=	Yes
NO_TEST=	Yes
ALL_TARGET=

CONFIGURE_STYLE=	gnu

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.12

CXXFLAGS +=	-D_LIBCPP_ENABLE_CXX17_REMOVED_UNARY_BINARY_FUNCTION

CONFIGURE_ENV=	CONFIG_SHELL=${LOCALBASE}/bin/bash \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -Wl,--threads=${MAKE_JOBS}" \
		KDE5INC="${LOCALBASE}/include/kde5" KDE5LIB="${LOCALBASE}/lib/kde5/libs"\
		KF5INC="${LOCALBASE}/include" KF5LIB="${LOCALBASE}/lib" \
		QT5DIR="${LOCALBASE}/lib/qt5" QT5LIB="${LOCALBASE}/qt5" \
		QT5INC="${LOCALBASE}/include/X11/qt5"

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
		--enable-mergelibs \
		--enable-gio \
		--enable-kf5 \
		--enable-lto \
		--enable-qt5 \
		--enable-release-build \
		--enable-cairo-canvas \
		--with-compat-oowrappers \
		--with-external-tar=${DISTDIR}/libreoffice \
		--with-fonts \
		--with-help=html \
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
		--with-system-librevenge \
		--with-system-libtiff \
		--with-system-libwebp \
		--with-system-libwpd \
		--with-system-mariadb \
		--with-system-nss \
		--with-system-openldap \
		--with-system-openssl \
		--with-system-poppler \
		--with-system-postgresql \
		--with-system-redland \
		--with-system-zlib \
		--with-vendor="The OpenBSD project" \
		--with-tls="openssl" \
		--with-webdav="curl" \
		--without-junit \
		--without-krb5 \
		--without-gssapi \
		--without-system-beanshell \
		--without-system-hsqldb \
		--without-system-jfreereport \
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

# Make sure to use our ld wrapper to pickup nobtcfi and wxneeded
CONFIGURE_ARGS+=--enable-ld=lld:${WRKDIR}/bin/ld

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=--enable-debug
.endif

MAKE_ENV+=	PYTHON="${MODPY_BIN}" verbose=f \
		PARALLELISM=${MAKE_JOBS} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

SUBST_VARS+=	BV

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
