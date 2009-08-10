# $OpenBSD: Makefile,v 1.2 2009/08/10 06:31:08 kili Exp $

VERSION=		1.8.1.19
PATCHLEVEL=		p4
DIRECTORY=		xulrunner

SO_VERSION=		2.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in auth autoconfig cookie fileview gtkembedmoz mozjs nullplugin \
	permissions pipboot pipnss pippki system-pref transformiix \
	universalchardet unixprintplugin websrvcs xmlextras xpcom xul xulutil
SHARED_LIBS+=		${_lib}	${SO_VERSION}
.endfor

CONFIGURE_ARGS+=	--with-system-png=${LOCALBASE} \
			--enable-default-toolkit=gtk2

MOB=			${WRKSRC}/dist/bin
MOZ=			${PREFIX}/${DIRECTORY}

DATADIRS=		chrome defaults icons res components greprefs plugins
DISTDIRS=		idl include
TOOLS=			TestGtkEmbed xpcshell xpt_link mozilla-xremote-client \
			xpicleanup xulrunner-bin nsinstall xpidl \
			xulrunner-stub regxpcom xpt_dump

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/xulrunner/app/mozilla.in \
		${WRKSRC}/xulrunner/setup/nsXULAppInstall.js
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
	cd ${WRKSRC}/dist && \
		find ${DISTDIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DISTDIRS} ! -type d \
			-exec ${INSTALL_DATA} {} ${MOZ}/{} \;
	cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \; && \
		${INSTALL_PROGRAM} ${TOOLS} ${MOZ}
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/dist/lib/libxpcomglue.a \
		${WRKSRC}/dist/lib/libxpcomglue_s.a ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/xulrunner ${MOB}/xulrunner-config \
		${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/build/unix/*.pc \
		${FILESDIR}/xulrunner-embedding.pc ${PREFIX}/lib/pkgconfig
	@perl -pi -e 's|!!PREFIX!!|${TRUEPREFIX}|g; ' \
		-e 's|!!VERSION!!|${VERSION}|g; ' \
		${PREFIX}/lib/pkgconfig/xulrunner-embedding.pc

.include <bsd.port.mk>
