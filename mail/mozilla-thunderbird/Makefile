# $OpenBSD: Makefile,v 1.3 2004/02/15 19:41:58 wilfried Exp $

ONLY_FOR_ARCHS=	alpha i386 sparc sparc64

COMMENT=	"redesign of the integrated Mozilla App-Suite mail component"

VER=		0.5
DISTNAME=	mozilla
PKGNAME=	mozilla-thunderbird-${VER}

CATEGORIES=	mail news

HOMEPAGE=	http://www.mozilla.org/projects/thunderbird/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/thunderbird/releases/${VER}/ \
		http://ftp.mozilla.org/pub/thunderbird/releases/${VER}/
DISTFILES=	thunderbird-${VER}-source.tar.bz2

MODULES=	gcc3
MODGCC3_ARCHES=	alpha sparc64
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
		--enable-optimize=-Os		\
		--disable-debug			\
		--disable-tests			\
		--disable-pedantic		\
		--disable-installer

# 
CONFIGURE_ARGS+=--disable-mathml		\
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
		--disable-ldap

CFLAGS+=	-fno-stack-protector
CONFIGURE_ENV=	MOZ_THUNDERBIRD=1 \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"
MAKE_ENV=	MOZ_THUNDERBIRD=1 \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin"

MOB=		${WRKSRC}/dist
MOZ=		${PREFIX}/mozilla-thunderbird

post-extract:
	# Hopefully an distfile without dos-text files will come soon
	cd ${WRKSRC} && find . -type f -print0 | xargs -0 perl -pi -e 's/\r\n/\n/'
	# Permissions are really screwy also
	cd ${WRKSRC} && find . -type f -a ! -name \*.pl -print0 | xargs -0 chmod a-x,a+r
	cd ${WRKSRC} && find . -type d -print0 | xargs -0 chmod 777 

	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/mail/app/mozilla.in

do-install:
.for dir in chrome components defaults res
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB}/bin && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB}/bin && ${TAR} -chf - *.so.1.0 | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.1.0 ${MOZ}/components/*.so.1.0 ${MOZ}/components/*.js
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/bin/thunderbird ${PREFIX}/bin/mozilla-thunderbird
	ln ${PREFIX}/bin/mozilla-thunderbird ${PREFIX}/bin/thunderbird
	${INSTALL_SCRIPT} ${MOB}/bin/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/bin/regchrome ${MOB}/bin/regxpcom ${MOB}/bin/thunderbird-bin ${MOZ}

.include <bsd.port.mk>
