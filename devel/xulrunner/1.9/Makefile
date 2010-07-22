# $OpenBSD: Makefile,v 1.19 2010/07/22 21:43:01 landry Exp $

ONLY_FOR_ARCHS=		alpha amd64 arm i386 powerpc sparc sparc64

VERSION=		1.9.2.7
FFX_VERSION=		3.6.7
DIRECTORY=		xulrunner1.9
# needed for mozilla.port.mk
MOZILLA_PROJECT=	xulrunner1.9
DISTNAME=		mozilla-1.9.2
DISTFILES=		firefox-${FFX_VERSION}.source.tar.bz2

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${FFX_VERSION}/source/

SO_VERSION=		3.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in imgicon mozjs xpcom xul nullplugin unixprintplugin
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Djit=1 -Damd64=0
.elif ${MACHINE_ARCH} == "amd64"
PKG_ARGS+=	-Djit=1 -Damd64=1
.else
PKG_ARGS+=	-Djit=0 -Damd64=0
.endif

# use files and patches from www/mozilla-firefox
PATCHDIR=		${PORTSDIR}/www/mozilla-firefox/patches
FILESDIR=		${PORTSDIR}/www/mozilla-firefox/files

MODULES+=		lang/python
MODPY_RUNDEP=		No

CONFIGURE_ARGS+=	--enable-default-toolkit=cairo-gtk2 \
			--disable-crashreporter \
			--disable-ipc \
			--disable-libnotify \
			--disable-necko-wifi
LIB_DEPENDS+=		:sqlite3->=3.6.10:databases/sqlite3
WANTLIB-devel+=		gthread-2.0 gobject-2.0
WANTLIB-main+=		sndio sqlite3.>=13.0

MOB=			${WRKSRC}/dist/bin
MOZ=			${PREFIX}/${DIRECTORY}
SUBST_VARS+=		DIRECTORY MOZILLA_PROJECT

DATADIRS=		chrome components defaults dictionaries greprefs \
			icons modules plugins res
DISTDIRS=		idl include
TOOLS=			mozilla-xremote-client nsinstall regxpcom xpcshell \
			xpidl xpt_dump xpt_link xulrunner-bin xulrunner-stub
PCFILES=		libxul.pc libxul-embedding.pc mozilla-js.pc \
			mozilla-plugin.pc mozilla-gtkmozembed.pc \
			mozilla-gtkmozembed-embedding.pc

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf \
				${WRKSRC}/js/src/build/autoconf
post-extract:
	cp -f ${FILESDIR}/sydney_audio_sndio.c \
		${WRKSRC}/media/libsydneyaudio/src/
	@cp -f ${FILESDIR}/nsSound.cpp ${WRKSRC}/widget/src/gtk2/

pre-configure:
	cd ${WRKSRC}/js/src && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	${SUBST_CMD} ${WRKSRC}/xpcom/io/nsAppFileLocationProvider.cpp \
		${WRKSRC}/config/autoconf.mk.in \
		${WRKSRC}/build/unix/mozilla.in \
		${WRKSRC}/extensions/spellcheck/hunspell/src/mozHunspell.cpp \
		${WRKSRC}/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/toolkit/xre/nsXREDirProvider.cpp \
		${WRKSRC}/xulrunner/setup/nsXULAppInstall.js

post-build:
	cd ${WRKSRC}/xulrunner/installer && env -i ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} ${PCFILES}

do-install:
	cd ${WRKSRC}/dist && \
		find ${DISTDIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DISTDIRS} ! -type d \
			-exec ${INSTALL_DATA} {} ${MOZ}/{} \;
	cd ${MOZ} && ln -s xulrunner-bin xulrunner1.9-bin
	cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} {} ${MOZ}/{} \; && \
		${INSTALL_PROGRAM} ${TOOLS} ${MOZ}
	${INSTALL_DATA} ${MOB}/LICENSE ${MOB}/platform.ini \
		${MOB}/*.so.${SO_VERSION} \
		${WRKSRC}/dist/lib/libxpcomglue.a \
		${WRKSRC}/dist/lib/libxpcomglue_s.a ${MOZ}
	# needed to please libtool - libs are built with fPIC
	cd ${MOZ} && ln -s libxpcomglue_s.a libxpcomglue_s_pic.a
	cd ${MOZ} && ln -s libxpcomglue.a libxpcomglue_pic.a
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/xulrunner ${PREFIX}/bin/xulrunner1.9
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
.for pcfile in ${PCFILES}
	${INSTALL_DATA} ${WRKBUILD}/xulrunner/installer/${pcfile} \
		${PREFIX}/lib/pkgconfig/${pcfile:S/mozilla/xulrunner/}
.endfor
	perl -pi -e 's|libxul-embedding-unstable|libxul-embedding|g; ' \
		-e 's|libxul-unstable|libxul|g; s|unstable|stable|g; ' \
		-e 's|^(Libs:.*)|\1 -Wl,-rpath,${LOCALBASE}/xulrunner1.9|g; ' \
		-e 's|-lxpcomglue |-lxpcomglue_pic |g; s|-lxpcomglue_s |-lxpcomglue_s_pic |; ' \
		-e 's|/lib||g; s|/stable||g; s|/\$${includetype}||g; ' \
		${PREFIX}/lib/pkgconfig/*.pc

.include <bsd.port.mk>
