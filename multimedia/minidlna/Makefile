COMMENT=	lightweight DLNA/UPnP-AV media server (aka ReadyMedia)

DISTNAME=	minidlna-1.3.0
REVISION=	0

CATEGORIES=	multimedia

HOMEPAGE=	https://sourceforge.net/projects/minidlna/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC avcodec avformat avutil c exif iconv id3tag intl jpeg
WANTLIB += ogg pthread sqlite3 vorbis z

# sometimes https://github.com/glebius/minidlna has useful things
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=minidlna/}

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS= --with-log-path=/var/log/minidlna \
		--with-db-path=/var/db/minidlna \
		--with-os-url=https://www.openbsd.org/
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	audio/flac \
		audio/libid3tag \
		databases/sqlite3 \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/libexif

E=		${PREFIX}/share/examples/minidlna

post-install:
	${INSTALL_DATA_DIR} $E
	${INSTALL_DATA} ${WRKSRC}/minidlna.conf $E
	${INSTALL_MAN} ${WRKSRC}/minidlnad.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/minidlna.conf.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
