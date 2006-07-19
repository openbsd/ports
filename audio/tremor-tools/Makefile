# $OpenBSD: Makefile,v 1.3 2006/07/19 13:41:02 steven Exp $

COMMENT=	"integer-only ogg vorbis command-line player"
DISTNAME=	vorbis-tools-1.0
PKGNAME=	${DISTNAME:S/vorbis/tremor/}p0
CATEGORIES=    	audio
MASTER_SITES=	http://www.vorbis.com/files/1.0/unix/

HOMEPAGE=	http://www.xiph.org/vorbis/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.4

BUILD_DEPENDS=	::devel/autoconf/${AUTOCONF_VERSION} \
		::devel/automake/${AUTOMAKE_VERSION} \
		::devel/metaauto
LIB_DEPENDS=	ao.3::audio/libao \
		ogg.5::audio/libogg \
		vorbisidec.1::audio/tremor \
		iconv.2::converters/libiconv \
		curl.2::net/curl

WANTLIB=	c crypto pthread ssl z

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-vorbistest
CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTHREAD_CFLAGS="-pthread" PTHREAD_LIBS="-pthread"

pre-configure:
	cd ${WRKSRC} && env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf
	@perl -pi -e s,"hardcode_libdir_flag_spec=.*",,g ${WRKSRC}/configure
	@perl -pi -e s,-O20,,g ${WRKSRC}/configure
	@perl -pi -e s,'CFLAGS="-O"','CFLAGS=""',g ${WRKSRC}/configure
	@perl -pi -e s,'/etc/ogg123rc',${SYSCONFDIR}/igg123rc,g \
		${WRKSRC}/ogg123/cfgfile_options.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tremor-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/tremor-tools/igg123rc
	${INSTALL_MAN} ${WRKSRC}/ogg123/ogg123.1 ${PREFIX}/man/man1/igg123.1

.include <bsd.port.mk>
