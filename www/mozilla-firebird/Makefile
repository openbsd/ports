# $OpenBSD: Makefile,v 1.29 2004/01/25 13:39:12 wilfried Exp $

ONLY_FOR_ARCHS=	alpha i386 sparc sparc64

COMMENT=	"redesign of Mozilla's browser component"

VER=		0.7
DISTNAME=	mozilla
PKGNAME=	mozilla-firebird-${VER}p0

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/projects/firebird/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.mozilla.org/pub/firebird/releases/${VER}/
DISTFILES=	MozillaFirebird-source-${VER}.tar.gz

MODULES=	gcc3
MODGCC3_ARCHES=	alpha sparc64 powerpc
MODGCC3_LANGS=	C++
BUILD_DEPENDS=	:zip->=2.3:archivers/zip \
		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+ \
		glib.1,gmodule.1::devel/glib \
		IDL.4::devel/ORBit \
		jpeg.62::graphics/jpeg \
		png.3::graphics/png \
		mng.1::graphics/libmng

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-mng=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-pthreads			\
		--enable-xft			\
		--enable-optimize=-O2		\
		--disable-debug			\
		--disable-tests			\
		--disable-pedantic		\
		--disable-installer

# from browser/config/mozconfig
CONFIGURE_ARGS+=--disable-ldap			\
		--disable-mailnews		\
		--enable-extensions=cookie,xml-rpc,xmlextras,p3p,pref,transformiix,universalchardet,typeaheadfind,webservices \
		--enable-crypto			\
		--disable-composer		\
		--disable-profilesharing

CFLAGS+=	-fno-stack-protector
CONFIGURE_ENV=	MOZ_PHOENIX=1 \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"
MAKE_ENV=	MOZ_PHOENIX=1 \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin"

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla-firebird

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/browser/app/mozilla.in

do-install:
	${INSTALL_DATA_DIR} ${MOZ}
.for dir in chrome components defaults icons plugins res searchplugins
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.1.0 | \
		${TAR} -xf - -C ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/MozillaFirebird ${PREFIX}/bin/mozilla-firebird
	ln ${PREFIX}/bin/mozilla-firebird ${PREFIX}/bin/firebird
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOB}/mozilla-config ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regchrome ${MOB}/regxpcom ${MOB}/MozillaFirebird-bin ${MOZ}

.include <bsd.port.mk>
