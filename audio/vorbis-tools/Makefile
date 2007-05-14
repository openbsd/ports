# $OpenBSD: Makefile,v 1.30 2007/05/14 19:35:08 naddy Exp $

COMMENT=	"play, encode, and manage Ogg Vorbis files"

DISTNAME=	vorbis-tools-1.1.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/vorbis/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/
MASTER_SITES0=	http://sites.inka.de/~mips/unix/distfiles/
PATCHFILES=	vorbis-tools-1.1.1-flac-1.1.3.patch:0
PATCH_DIST_STRIP=-p1

MODULES=	devel/gettext
LIB_DEPENDS=	ao.>=3::audio/libao \
		curl.>=3::net/curl \
		FLAC.>=7,OggFLAC.>=3::audio/flac \
		speex.>=4::audio/speex \
		vorbis.>=4,vorbisenc.>=2,vorbisfile.>=4::audio/libvorbis
WANTLIB=	c crypto idn m ogg pthread ssl z

USE_LIBTOOL=	Yes
AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9
CONFIGURE_STYLE=autoconf automake
CONFIGURE_ARGS=	--enable-vcut
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTHREAD_CFLAGS="-pthread" PTHREAD_LIBS="-pthread"
SEPARATE_BUILD=	simple

AUTOMAKE_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} 
post-patch:
	@echo "Running aclocal-${AUTOMAKE_VERSION} in ${AUTOCONF_DIR}
	@cd ${AUTOCONF_DIR} && ${SETENV} ${AUTOMAKE_ENV} aclocal
	@echo "Running automake-${AUTOMAKE_VERSION} in ${AUTOCONF_DIR}
	@cd ${AUTOCONF_DIR} && ${SETENV} ${AUTOMAKE_ENV} automake -i

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/ogg123rc

.include <bsd.port.mk>
