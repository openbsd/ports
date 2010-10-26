# $OpenBSD: Makefile,v 1.27 2010/10/26 10:01:33 landry Exp $

MOZILLA_VERSION =	1.9.2.11
FFX_VERSION=		3.6.11
MOZILLA_BRANCH =	1.9.2
MOZILLA_PROJECT =	xulrunner1.9
REVISION-main =		0
REVISION-devel =	0
DISTNAME =		firefox-${FFX_VERSION}.source


MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${FFX_VERSION}/source/

SO_VERSION=		3.1
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	imgicon mozjs xpcom xul sqlite3 nullplugin unixprintplugin

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

MOZILLA_DATADIRS =	chrome components defaults dictionaries greprefs \
			icons modules plugins res
MOZILLA_AUTOCONF_DIRS +=	js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in \
				xulrunner/setup/nsXULAppInstall.js
DISTDIRS=		idl include
TOOLS=			nsinstall xpcshell xpidl xpt_dump xpt_link xulrunner-bin xulrunner-stub
PCFILES=		libxul.pc libxul-embedding.pc mozilla-js.pc \
			mozilla-plugin.pc mozilla-gtkmozembed.pc \
			mozilla-gtkmozembed-embedding.pc

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
	perl -pi -e 's|libxul-embedding-unstable|libxul-embedding|g; ' \
		-e 's|libxul-unstable|libxul|g; s|unstable|stable|g; ' \
		-e 's|^(Libs:.*)|\1 -Wl,-rpath,${LOCALBASE}/xulrunner1.9|g; ' \
		-e 's|-lxpcomglue |-lxpcomglue_pic |g; s|-lxpcomglue_s |-lxpcomglue_s_pic |; ' \
		-e 's|/lib||g; s|/stable||g; s|/\$${includetype}||g; ' \
		${PREFIX}/lib/pkgconfig/*.pc

.include <bsd.port.mk>
