# $OpenBSD: Makefile,v 1.44 2003/05/23 10:09:17 wilfried Exp $

COMMENT=	"open source version of the Netscape browser"
COMMENT-devel=	"devel files for Gecko"

VER=		1.4b
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

.for i in ${MULTI_PACKAGES}
PKGNAME$i=	mozilla${i}-${VER}
.endfor

SUBPACKAGE?=

.if ${SUBPACKAGE} == "-devel"
RUN_DEPENDS=	::www/mozilla
.else
MODULES=	iconv
MODULES+=	gcc3
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

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=					\
		--with-system-jpeg=${LOCALBASE}	\
		--with-system-mng=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-pthreads			\
		--enable-crypto			\
		--enable-extensions=default	\
		--disable-debug			\
		--disable-tests			\
		--disable-ldap

CONFIGURE_ENV=	CFLAGS="" CXXFLAGS=""
MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		CFLAGS="" CXXFLAGS=""

MOB=		${WRKSRC}/dist
MOZ=		${PREFIX}/mozilla

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}

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
	${INSTALL_SCRIPT} ${MOB}/bin/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/bin/regxpcom ${MOB}/bin/mozilla-bin ${MOZ}

.include <bsd.port.mk>
