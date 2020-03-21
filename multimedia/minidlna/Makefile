# $OpenBSD: Makefile,v 1.32 2020/03/21 18:32:32 ajacoutot Exp $

COMMENT=	lightweight DLNA/UPnP-AV media server (aka ReadyMedia)

GH_ACCOUNT=	glebius
GH_PROJECT=	minidlna
GH_TAGNAME=	f06964a9b4253c93ce96dabd8953eb6dfc4406bd
V=		1.2.1
DISTNAME=	minidlna-${V}-glebius
PKGNAME=	minidlna-${V}

REVISION=	7

CATEGORIES=	multimedia

HOMEPAGE=	http://sourceforge.net/projects/minidlna/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC avformat avutil c exif iconv id3tag intl jpeg
WANTLIB += ogg pthread sqlite3 vorbis

# use the github fork, see this link for more information:
# https://svnweb.freebsd.org/ports?view=revision&revision=489641
#MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=minidlna/}

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS= --with-log-path=/var/log/minidlna \
		--with-db-path=/var/db/minidlna \
		--with-os-url=http://www.openbsd.org/
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	audio/flac \
		audio/libid3tag \
		databases/sqlite3 \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/libexif

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
 
E=		${PREFIX}/share/examples/minidlna

post-install:
	${INSTALL_DATA_DIR} $E
	${INSTALL_DATA} ${WRKSRC}/minidlna.conf $E
	${INSTALL_MAN} ${WRKSRC}/minidlnad.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/minidlna.conf.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
