# $OpenBSD: Makefile,v 1.29 2019/05/20 22:15:18 naddy Exp $

COMMENT=	lightweight DLNA/UPnP-AV media server (aka ReadyMedia)

GH_ACCOUNT=	glebius
GH_PROJECT=	minidlna
GH_TAGNAME=	43573257e45728e070a5f30bd74648c86537e625
V=		1.2.1
DISTNAME=	minidlna-${V}-glebius
PKGNAME=	minidlna-${V}

REVISION=	5

CATEGORIES=	multimedia

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://sourceforge.net/projects/minidlna/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

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
