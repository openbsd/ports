# $OpenBSD: Makefile,v 1.10 2004/08/08 17:19:36 robert Exp $

ONLY_FOR_ARCHS=	alpha i386 sparc sparc64 amd64 powerpc

COMMENT=	"redesign of Mozilla's browser component"

VER=		0.8
DISTNAME=	mozilla
PKGNAME=	mozilla-firefox-${VER}p1

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/projects/firefox/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/firefox/releases/${VER}/ \
		http://ftp.mozilla.org/pub/firefox/releases/${VER}/
DISTFILES=	firefox-source-${VER}.tar.bz2

MODULES=	gcc3
MODGCC3_ARCHES=	alpha powerpc
MODGCC3_LANGS=	C++
BUILD_DEPENDS=	:zip->=2.3:archivers/zip \
		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+ \
		glib.1,gmodule.1::devel/glib \
		IDL.4::devel/ORBit \
		jpeg.62::graphics/jpeg \
		png.3::graphics/png

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf \
				${WRKSRC}/nsprpub/build/autoconf \
				${WRKSRC}/directory/c-sdk/config/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-pthreads			\
		--enable-xft			\
		--enable-optimize=-Os		\
		--disable-debug			\
		--disable-tests			\
		--disable-pedantic		\
		--disable-installer

# from browser/config/mozconfig
CONFIGURE_ARGS+=--disable-ldap			\
		--disable-mailnews		\
		--enable-extensions=cookie,xml-rpc,xmlextras,p3p,pref,transformiix,universalchardet,typeaheadfind,webservices \
		--enable-crypto			\
		--disable-composer

# There is no problem with the propolice-enabled gcc3 on amd64 and sparc64,
# but it is reported to still be broken on others.
.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "sparc64"
CFLAGS+=	-fno-stack-protector
.endif

CONFIGURE_ENV=	MOZ_PHOENIX=1 \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"
MAKE_ENV=	MOZ_PHOENIX=1 \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin"

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla-firefox

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/browser/app/mozilla.in

do-install:
	${INSTALL_DATA_DIR} ${MOZ}
.for dir in chrome components defaults res searchplugins
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.1.0 | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.1.0 ${MOZ}/components/*.so.1.0
	${INSTALL_SCRIPT} ${MOB}/firefox ${PREFIX}/bin/
	ln ${PREFIX}/bin/firefox ${PREFIX}/bin/mozilla-firefox
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOB}/mozilla-config ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regchrome ${MOB}/regxpcom ${MOB}/firefox-bin ${MOZ}

.include <bsd.port.mk>
