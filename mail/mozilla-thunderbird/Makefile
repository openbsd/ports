# $OpenBSD: Makefile,v 1.50 2006/12/21 21:52:12 kurt Exp $

ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT=	"redesign of the integrated Mozilla App-Suite mail component"

VER=		1.5.0.9
DISTNAME=	mozilla
PKGNAME=	mozilla-thunderbird-${VER}
SO_VERSION=	12.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues. Whenever PKGNAME gets
# bumped and/or SO_VERSION changes, remember to update enigmail's
# SO_VERSION and LIB_DEPENDS to match.

.for _lib in accessibility appcomps auth autoconfig caps chrome commandlines \
	composer docshell editor embedcomponents fileview gfx_gtk gfxps \
	gfxpsshar gkgfx gklayout gtkembedmoz gtkxtbin htmlpars i18n imglib2 \
	import jar50 jsd ldap50 mail mailcomps mork mozfind mozjs mozldap \
	msgsmime myspell necko necko2 nsappshell nss3 nssckbi pipboot \
	pipnss pippki pref prldap50 rdf remoteservice smime3 \
	softokn3 spellchecker ssl3 system-pref toolkitcomps txmgr uconv \
	universalchardet wallet walletviewers webbrwsr websrvcs widget_gtk2 \
	xmlextras xpcom xpcom_compat xpcom_compat_c xpcom_core xpconnect \
	xpinstall xpistub
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

CATEGORIES=	mail news

HOMEPAGE=	http://www.mozilla.org/projects/thunderbird/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xft Xrender Xinerama Xt c fontconfig freetype m pthread z \
		atk-1.0 cairo glib-2.0 gmodule-2.0 gobject-2.0 \
		jpeg pango-1.0 pangoft2-1.0 pangocairo-1.0 png stdc++

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/thunderbird/releases/${VER}/source/ \
		http://ftp.mozilla.org/pub/mozilla.org/thunderbird/releases/${VER}/source/
DISTFILES=	thunderbird-${VER}-source.tar.bz2

MODULES=	gettext
RUN_DEPENDS=	:esound-*:audio/esound
BUILD_DEPENDS=	:libIDL-*:devel/libIDL \
		:zip->=2.3:archivers/zip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes
SUBST_VARS=	LOCALBASE SO_VERSION

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf \
				${WRKSRC}/directory/c-sdk/config/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-system-nspr		\
		--with-pthreads			\
		--enable-xft			\
		--enable-optimize=-Os		\
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
		--enable-canvas

#  from mail/config/mozconfig
CONFIGURE_ARGS+=--enable-application=mail

MAKE_ENV=	MOZ_CO_PROJECT=mail \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla-thunderbird

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/mail/app/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
.for dir in chrome components defaults extensions greprefs res
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.??.? | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.??.? ${MOZ}/components/*.so.??.? ${MOZ}/components/*.js
	chown -R ${SHAREOWN}:${SHAREGRP} ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}

	${INSTALL_DATA} ${WRKSRC}/mail/app/mozicon16.xpm ${WRKSRC}/mail/app/mozicon50.xpm ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/thunderbird ${MOB}/thunderbird-config ${PREFIX}/bin/
	ln -f ${PREFIX}/bin/thunderbird ${PREFIX}/bin/mozilla-thunderbird
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regxpcom ${MOB}/thunderbird-bin ${MOB}/mozilla-xremote-client ${MOZ}
	ln -f ${MOZ}/thunderbird-bin ${MOZ}/mozilla-thunderbird-bin

.include <bsd.port.mk>
