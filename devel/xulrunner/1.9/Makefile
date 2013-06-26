# $OpenBSD: Makefile,v 1.71 2013/06/26 19:31:58 landry Exp $

MOZILLA_VERSION =	1.9.2.28
MOZILLA_BRANCH =	1.9.2
MOZILLA_PROJECT =	xulrunner1.9
MOZILLA_DIST =		firefox
MOZILLA_DIST_VERSION =	3.6.28
REVISION-devel =	4
REVISION-main =		10

SO_VERSION =		3.2
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	imgicon mozjs xpcom xul nullplugin unixprintplugin

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Djit=1 -Damd64=0
.elif ${MACHINE_ARCH} == "amd64"
PKG_ARGS+=	-Djit=1 -Damd64=1
.else
PKG_ARGS+=	-Djit=0 -Damd64=0
.endif

# use patches from www/firefox36
PATCHDIR =		${PORTSDIR}/www/firefox36/patches

MOZILLA_DATADIRS =	chrome components defaults dictionaries greprefs \
			icons modules plugins res
MOZILLA_AUTOCONF_DIRS +=	js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in \
				xulrunner/setup/nsXULAppInstall.js
DISTDIRS =		idl include
TOOLS =			nsinstall xpcshell xpidl xpt_dump xpt_link xulrunner-bin xulrunner-stub
PCFILES =		libxul.pc libxul-embedding.pc mozilla-js.pc \
			mozilla-plugin.pc mozilla-gtkmozembed.pc \
			mozilla-gtkmozembed-embedding.pc

WANTLIB-devel =		${MOZILLA_PROJECT}/mozjs ${MOZILLA_PROJECT}/xpcom \
			${MOZILLA_PROJECT}/xul

post-build:
	cd ${WRKSRC}/xulrunner/installer && env -i ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} ${PCFILES}

pre-install:
	cd ${MOB} && ln -sf xulrunner ${MOZILLA_PROJECT}
	cd ${MOB} && ln -sf xulrunner-bin ${MOZILLA_PROJECT}-bin

post-install:
	cd ${WRKSRC}/dist && \
		find ${DISTDIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DISTDIRS} ! -type d \
			-exec ${INSTALL_DATA} {} ${MOZ}/{} \;
	${INSTALL_DATA}	${WRKSRC}/dist/lib/libxpcomglue.a \
		${WRKSRC}/dist/lib/libxpcomglue_s.a ${MOZ}
	# needed to please libtool - libs are built with fPIC
	cd ${MOZ} && ln -sf libxpcomglue_s.a libxpcomglue_s_pic.a
	cd ${MOZ} && ln -sf libxpcomglue.a libxpcomglue_pic.a
	cd ${MOB} && ${INSTALL_PROGRAM} ${TOOLS} ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
.for pcfile in ${PCFILES}
	${INSTALL_DATA} ${WRKBUILD}/xulrunner/installer/${pcfile} \
		${PREFIX}/lib/pkgconfig/${pcfile:S/mozilla/xulrunner/}
.endfor
	perl -pi -e 's|libxul|libxul19|g; s|/lib||g; ' \
		-e 's|^(Libs:.*)|\1 -Wl,-rpath,${LOCALBASE}/xulrunner1.9|g; ' \
		-e 's|-lxpcomglue |-lxpcomglue_pic |g; s|-lxpcomglue_s |-lxpcomglue_s_pic |; ' \
		${PREFIX}/lib/pkgconfig/*.pc

	# avoid conflicts with newer xulrunners
	mv ${PREFIX}/lib/pkgconfig/libxul{,19}.pc
	mv ${PREFIX}/lib/pkgconfig/libxul{,19}-embedding.pc

.include <bsd.port.mk>
