# $OpenBSD: Makefile,v 1.25 2019/01/06 10:25:57 ajacoutot Exp $

COMMENT=	lightweight DLNA/UPnP-AV media server (aka ReadyMedia)

V=		1.2.1
DISTNAME=	minidlna-$V
PKGNAME=	minidlna-$V
REVISION=	3

CATEGORIES=	multimedia

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://sourceforge.net/projects/minidlna/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  FLAC avformat avutil c exif iconv id3tag intl jpeg ogg
WANTLIB += pthread sqlite3 vorbis

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=minidlna/}

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

CONFIGURE_ARGS= --with-log-path=/var/log/minidlna \
		--with-db-path=/var/db/minidlna \
		--with-os-url=http://www.openbsd.org/
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS=	devel/gettext-tools
LIB_DEPENDS=	audio/flac \
		audio/libid3tag \
		databases/sqlite3 \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/libexif

NO_TEST=	Yes
E=		${PREFIX}/share/examples/minidlna

post-install:
	${INSTALL_DATA_DIR} $E
	${INSTALL_DATA} ${WRKSRC}/minidlna.conf $E
	${INSTALL_MAN} ${WRKSRC}/minidlnad.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/minidlna.conf.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
