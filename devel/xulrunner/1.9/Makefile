# $OpenBSD: Makefile,v 1.1.1.1 2009/07/27 21:35:56 martynas Exp $

ONLY_FOR_ARCHS=		alpha amd64 arm i386 powerpc sparc sparc64

VERSION=		1.9.0.7
PATCHLEVEL=
DIRECTORY=		xulrunner1.9

SO_VERSION=		1.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in imgicon mozjs xpcom xul nullplugin unixprintplugin
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

MODULES+=		lang/python
MODPY_RUNDEP=		No

CONFIGURE_ARGS+=	--enable-default-toolkit=cairo-gtk2
LIB_DEPENDS+=		sqlite3.>=10.0:sqlite3->=3.5:databases/sqlite3
WANTLIB-devel+=		gobject-2.0

MOB=			${WRKSRC}/dist/bin
MOZ=			${PREFIX}/${DIRECTORY}

DATADIRS=		chrome components defaults dictionaries greprefs \
			icons modules plugins res
DISTDIRS=		idl include
TOOLS=			mozilla-xremote-client nsinstall regxpcom xpcshell \
			xpidl xpt_dump xpt_link xulrunner-bin xulrunner-stub
PCFILES=		libxul.pc libxul-embedding.pc mozilla-js.pc \
			mozilla-plugin.pc mozilla-gtkmozembed.pc \
			mozilla-gtkmozembed-embedding.pc

pre-configure:
	perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/extensions/spellcheck/hunspell/src/mozHunspell.cpp \
		${WRKSRC}/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/toolkit/xre/nsXREDirProvider.cpp \
		${WRKSRC}/xulrunner/app/mozilla.in \
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
	mv ${MOZ}/include/xpcom/* ${MOZ}/include
	rmdir ${MOZ}/include/xpcom
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
		-e 's|/lib||g; s|/stable||g; s|/\$${includetype}||g; ' \
		${PREFIX}/lib/pkgconfig/*.pc

.include <bsd.port.mk>
