# $OpenBSD: Makefile,v 1.56 2003/07/17 08:24:24 wilfried Exp $

NOT_FOR_ARCHS=	vax m68k hppa

COMMENT=	"open source version of the Netscape browser"
COMMENT-devel=	"devel files for Gecko"

VER=		1.4
DISTNAME=	mozilla
PKGNAME=	mozilla-${VER}
DISTFILES=	mozilla-source-${VER}.tar.bz2

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.mozilla.org/pub/mozilla/releases/mozilla${VER}/src/

MULTI_PACKAGES=	-devel

VMEM_WARNING=yes

.for i in ${MULTI_PACKAGES}
PKGNAME$i=	mozilla${i}-${VER}
.endfor

SUBPACKAGE?=

.if ${SUBPACKAGE} == "-devel"
RUN_DEPENDS=	::www/mozilla
.else
MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++
BUILD_DEPENDS=	:zip->=2.3:archivers/zip
LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+ \
		glib.1,gmodule.1::devel/glib \
		IDL.4::devel/ORBit \
		jpeg.62::graphics/jpeg \
		png.3::graphics/png \
		mng.1::graphics/libmng
.endif

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
		--enable-crypto			\
		--enable-extensions=default	\
		--disable-pedantic		\
		--disable-debug			\
		--disable-tests			\
		--disable-ldap

CFLAGS+=	-fno-stack-protector
MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/dist/bin"

MOB=		${WRKSRC}/dist
MOZ=		${PREFIX}/mozilla

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g' \
		${WRKSRC}/xpfe/bootstrap/mozilla.in

do-install:
.for dir in include lib
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
.for dir in chrome components defaults icons res plugins searchplugins
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB}/bin && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB}/bin && ${TAR} -chf - *.so.1.0 | \
		${TAR} -xf - -C ${MOZ}
	${INSTALL_DATA} ${MOB}/bin/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/bin/mozilla ${PREFIX}/bin
	${INSTALL_SCRIPT} ${MOB}/bin/run-mozilla.sh ${MOB}/bin/mozilla-config ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/bin/regchrome ${MOB}/bin/regxpcom ${MOB}/bin/mozilla-bin ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
.for file in mozilla mozilla-mail mozilla-compose
	${INSTALL_DATA} ${WRKSRC}/build/package/rpm/SOURCES/${file}.desktop ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/build/package/rpm/SOURCES/${file}-icon.* ${PREFIX}/share/pixmaps
.endfor

.include <bsd.port.mk>
