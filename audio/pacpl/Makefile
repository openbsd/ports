# $OpenBSD: Makefile,v 1.1.1.1 2006/12/12 06:21:34 steven Exp $

PKG_ARCH=		*

COMMENT-main=		"PAC (Perl Audio Converter)"
COMMENT-konqueror=	"PAC Konqueror service menu & mime types"
COMMENT-amarok=		"PAC Amarok plugin"

V=			3.2.5
DISTNAME=		pacpl-${V}
PKGNAME-main=		pacpl-${V}
PKGNAME-konqueror=	pacpl-konqueror-${V}
PKGNAME-amarok=		pacpl-amarok-${V}
CATEGORIES=		audio perl5

HOMEPAGE=		http://pacpl.sourceforge.net/

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pacpl/}

NO_BUILD=		Yes
NO_REGRESS=		Yes

MULTI_PACKAGES=		-main -konqueror -amarok

RUN_DEPENDS=		::audio/bonk \
			::audio/faac \
			::audio/lame \
			::audio/mpg321 \
			::audio/sox \
			::audio/vorbis-tools \
			::audio/p5-Audio-FLAC-Header \
			::audio/p5-Audio-Musepack \
			::audio/p5-Audio-WMA \
			::audio/p5-CDDB_get \
			::audio/p5-MP3-ID3v1Tag \
			::audio/p5-MP3-Tag \
			::audio/p5-MP4-Info \
			::audio/p5-Ogg-Vorbis-Header \
			::graphics/ffmpeg \
			::x11/mplayer

RUN_DEPENDS-konqueror=	::${BUILD_PKGPATH} \
			::x11/kde/base3
RUN_DEPENDS-amarok=	::${BUILD_PKGPATH} \
			::audio/amarok

INSTALL_FLAGS=		"base kde"
NEW_DIRS=		share/mimelnk/audio \
			share/apps/konqueror/servicemenus \
			share/apps/amarok/scripts

post-extract:
	@cd ${WRKSRC}/man && gunzip *.1.gz

do-configure:
	@perl -pi -e '/nice/ || s,/usr/bin,${LOCALBASE}/bin,;' \
		-e 's,mpg123,mpg321,;' -e 's,/dev/cdrom,/dev/rcd0c,;' \
		-e 's,MPCPLAYER\s*=.*$$,MPCPLAYER = ${LOCALBASE}/bin/mplayer,' \
		${WRKSRC}/pacpl.conf

do-install:
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/pacpl-install
.for d in ${NEW_DIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/$d
.endfor
	cd ${WRKSRC} && ./pacpl-install --install=${INSTALL_FLAGS}
	${INSTALL_MAN} ${WRKSRC}/man/pacpl.1 ${PREFIX}/man/man1
	tar -C ${PREFIX}/share/apps/amarok/scripts -xzf \
		${WRKSRC}/kde/amarok/pacx.amarokscript.tar.gz

.include <bsd.port.mk>
