# $OpenBSD: Makefile,v 1.3 2003/05/21 06:54:54 marcm Exp $

COMMENT=	"redesign of Mozilla's browser component"

VER=		0.6
DISTNAME=	mozilla
PKGNAME=	mozilla-firebird-${VER}

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/projects/firebird/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.mozilla.org/pub/firebird/releases/${VER}/
DISTFILES=	MozillaFirebird-${VER}-source.tar.bz2

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

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=					\
		--with-system-jpeg=${LOCALBASE}	\
		--with-system-mng=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-pthreads			\
		--disable-composer		\
		--disable-mailnews		\
		--enable-plaintext-editor-only	\
		--enable-extensions=default,-inspector,-irc,-venkman,-content-packs,-help \
		--enable-crypto			\
		--disable-debug			\
		--disable-tests			\
		--disable-ldap

CONFIGURE_ENV=	CFLAGS="" CXXFLAGS="" MOZ_PHOENIX=1
MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		CFLAGS="" CXXFLAGS="" MOZ_PHOENIX=1

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}

do-install:
	${INSTALL_DATA_DIR} ${MOZ}
.for dir in chrome components defaults icons ipc plugins res searchplugins
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.1.0 | \
		${TAR} -xf - -C ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/MozillaFirebird ${MOB}/run-mozilla.sh ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${MOB}/MozillaFirebird-bin ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${MOB}/regxpcom ${MOZ}

.include <bsd.port.mk>
