# $OpenBSD: Makefile,v 1.2 2009/11/18 08:44:51 landry Exp $

SHARED_ONLY =	Yes

COMMENT-main =		Mozilla calendar
COMMENT-lightning =	Mozilla Thunderbird calendar extension

VER =			0.9
DISTNAME =		lightning-sunbird-${VER}-source
PKGNAME-main =		sunbird-${VER}p0
PKGNAME-lightning =	lightning-${VER}p0

EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	productivity mail

MULTI_PACKAGES =	-main -lightning

# need to be in synch with mail/mozilla-thunderbird for lighting to work
SO_VERSION =	14.0

.for _lib in accessibility appcomps auth autoconfig calbasecomps caps chrome commandlines \
	composer cookie docshell editor embedcomponents fileview gfx_gtk gfxps \
	gfxpsshar gkdebug gkgfx gklayout gtkembedmoz gtkxtbin htmlpars i18n imglib2 \
	import jar50 jsd ldap50 mail mailcomps mork mozfind mozjs mozldap \
	msgsmime myspell necko necko2 nkdatetime nkfinger nsappshell p3p permissions pipboot \
	pipnss pippki pref prldap50 rdf remoteservice schemavalidation \
	spellchecker sql sroaming storagecomps system-pref toolkitcomps transformiix typeaheadfind \
	txmgr uconv universalchardet wallet walletviewers webbrwsr websrvcs \
	widget_gtk2 xforms xmlextras xpcom xpcom_compat xpcom_compat_c xpcom_core \
	xpconnect xpinstall xpistub
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE =	http://www.mozilla.org/projects/calendar

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://releases.mozilla.org/pub/mozilla.org/calendar/sunbird/releases/${VER}/source/

MODULES =	devel/gettext
RUN_DEPENDS-main =	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS =	:libIDL-*:devel/libIDL \
		::archivers/zip \
		::archivers/unzip

LIB_DEPENDS-main =	${LIB_DEPENDS} \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr \
		nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss

WANTLIB = c m
WANTLIB-main += ${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-main += Xft Xi Xinerama Xrandr Xrender Xt atk-1.0 cairo expat
WANTLIB-main += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB-main += gobject-2.0 gthread-2.0 jpeg pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pangox-1.0 pixman-1 png pthread stdc++
WANTLIB-main += pthread-stubs xcb z

LIB_DEPENDS-lightning = mozilla-thunderbird/mozjs,mozilla-thunderbird/xpcom,mozilla-thunderbird/xpcom_core::mail/mozilla-thunderbird

WANTLIB-lightning = ${WANTLIB} nspr4 plc4 plds4

USE_X11 =	Yes
USE_GMAKE =	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS =	Yes

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/build/autoconf \
				${WRKSRC}/directory/c-sdk/config/autoconf

AUTOCONF_VERSION =	2.13
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-system-nspr		\
		--with-system-nss		\
		--with-pthreads			\
		--enable-xft			\
		--disable-optimize		\
		--enable-default-toolkit=gtk2	\
		--disable-debug			\
		--disable-tests			\
		--disable-pedantic		\
		--disable-installer		\
		--disable-updater		\
		--disable-gnomeui		\
		--disable-gnomevfs		\
		--enable-xinerama		\
		--enable-svg			\
		--enable-svg-renderer=cairo	\
		--enable-system-cairo		\
		--enable-canvas			\
		--enable-official-branding	\
		--enable-extensions=default,lightning \
		--enable-application=calendar

WRKDIST =	${WRKDIR}/mozilla
MAKE_ENV =	MOZ_CO_PROJECT=calendar \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV =	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

MOB =		${WRKSRC}/dist/bin
MOZ =		${PREFIX}/sunbird

# magic number taken from xpi/install.rdf
GUID =		{e2fda1a4-762b-4020-b5ad-a41df1933103}
LIGHTNINGDIR =	${PREFIX}/mozilla-thunderbird/extensions/${GUID}
SUBST_VARS =	GUID
DATADIRS =	chrome components defaults extensions \
		greprefs icons res js

post-extract:
	@cp -f ${FILESDIR}/nsSound.cpp ${WRKSRC}/widget/src/gtk2/

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/mail/app/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
	@cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} \
		${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/sunbird \
		${MOB}/sunbird-config ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regxpcom \
		${MOB}/sunbird-bin \
		${MOB}/mozilla-xremote-client ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/sunbird.desktop > \
			${PREFIX}/share/applications/sunbird.desktop

	# install lightning from the built xpi
	${INSTALL_DATA_DIR} ${LIGHTNINGDIR}
	unzip -q ${MOB}/../xpi-stage/lightning.xpi -d ${LIGHTNINGDIR}
	@perl -pi -e 's,OpenBSD_</em:targetPlatform>,OpenBSD</em:targetPlatform>\n<em:type>2</em:type>,' ${LIGHTNINGDIR}/install.rdf

.include <bsd.port.mk>
