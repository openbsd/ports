# $OpenBSD: Makefile,v 1.1.1.1 2004/01/18 11:47:42 wilfried Exp $

ONLY_FOR_ARCHS=	alpha i386 sparc sparc64

COMMENT=	"redesign of the integrated Mozilla App-Suite mail component"

VER=		0.4
DISTNAME=	mozilla
PKGNAME=	mozilla-thunderbird-${VER}

CATEGORIES=	mail news

HOMEPAGE=	http://www.mozilla.org/projects/thunderbird/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.mozilla.org/pub/thunderbird/releases/${VER}/
DISTFILES=	thunderbird-source-${VER}.tar.bz2

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
CONFIGURE_ARGS=					\
		--with-system-jpeg=${LOCALBASE}	\
		--with-system-mng=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-pthreads			\
		--enable-xft			\
		--enable-optimize=-O2		\
		--disable-mathml		\
		--disable-installer		\
		--disable-activex		\
		--disable-activex-scripting	\
		--disable-oji			\
		--disable-necko-disk-cache	\
		--disable-profilesharing	\
		--enable-extensions=wallet,spellcheck,xmlextras \
		--enable-necko-protocols=http,file,jar,viewsource,res,data \
		--enable-image-decoders=png,gif,jpeg,bmp \
		--enable-crypto			\
		--disable-pedantic		\
		--disable-debug			\
		--disable-tests			\
		--disable-ldap

CFLAGS+=	-fno-stack-protector
CONFIGURE_ENV=	MOZ_THUNDERBIRD=1 \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"
MAKE_ENV=	MOZ_THUNDERBIRD=1 \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin"

MOB=		${WRKSRC}/dist
MOZ=		${PREFIX}/mozilla-thunderbird

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g' \
		${WRKSRC}/mail/app/mozilla.in

do-install:
.for dir in chrome components defaults icons plugins res
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB}/bin && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB}/bin && ${TAR} -chf - *.so.1.0 | \
		${TAR} -xf - -C ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/bin/thunderbird ${PREFIX}/bin/mozilla-thunderbird
	ln ${PREFIX}/bin/mozilla-thunderbird ${PREFIX}/bin/thunderbird
	${INSTALL_SCRIPT} ${MOB}/bin/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/bin/regchrome ${MOB}/bin/regxpcom ${MOB}/bin/thunderbird-bin ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
