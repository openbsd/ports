# $OpenBSD: Makefile,v 1.11 2004/08/02 16:08:23 naddy Exp $

ONLY_FOR_ARCHS=	alpha i386 sparc sparc64 amd64

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
DISTFILES=	thunderbird-${VER}-source.tar.gz

MODULES=	gcc3
MODGCC3_ARCHES=	alpha
MODGCC3_LANGS=	C++
BUILD_DEPENDS=	:zip->=2.3:archivers/zip \
		:bzip2-*:archivers/bzip2 \
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

# There is no problem with the propolice-enabled gcc3 on amd64 and sparc64,
# but it is reported to still be broken on others.
.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "sparc64"
CFLAGS+=	-fno-stack-protector
.endif

CONFIGURE_ENV=	MOZ_THUNDERBIRD=1 \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"
MAKE_ENV=	MOZ_THUNDERBIRD=1 \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin"

MOB=		${WRKSRC}/dist
MOZ=		${PREFIX}/mozilla-thunderbird

do-extract:
	@PATH=${PORTPATH}; set -e; cd ${WRKDIR}; \
	${GZIP_CMD} -dc ${FULLDISTDIR}/${DISTFILES} | tar xf - ; \
	${BZIP2} -dc ${WRKDIR}/mozilla-thunderbird/archives/thunderbird-${VER}-source.tar.bz2 | tar xf -; \
	rm -rf ${WRKDIR}/mozilla-thunderbird

post-extract:
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
	${INSTALL_DATA} ${WRKSRC}/mail/app/mozicon16.xpm ${WRKSRC}/mail/app/mozicon50.xpm ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/bin/thunderbird ${PREFIX}/bin/mozilla-thunderbird
	ln ${PREFIX}/bin/mozilla-thunderbird ${PREFIX}/bin/thunderbird
	${INSTALL_SCRIPT} ${MOB}/bin/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/bin/regchrome ${MOB}/bin/regxpcom ${MOB}/bin/thunderbird-bin ${MOZ}

.include <bsd.port.mk>
