# $OpenBSD: Makefile,v 1.1.1.1 2008/05/19 20:21:42 okan Exp $

COMMENT =	collection of perl scripts to manage your iPod

DISTNAME =	gnupod-0.99.6
PKGNAME =	p5-${DISTNAME}
CATEGORIES =	audio

HOMEPAGE =	http://www.gnu.org/software/gnupod/
MASTER_SITES =	http://blinkenlights.ch/gnupod-dist/stable/ \
		http://savannah.gnu.org/download/gnupod/

MAINTAINER =	James Turner <james@bsdgroup.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

EXTRACT_SUFX =	.tgz
MODULES =	perl

CONFIGURE_STYLE =gnu

BUILD_DEPENDS =	::security/p5-Digest-SHA1 \
		::textproc/p5-XML-Parser \
		::converters/p5-Unicode-String \
		::audio/p5-MP3-Info \
		::www/p5-libwww \
		::audio/p5-Audio-FLAC-Header \
		::audio/p5-Ogg-Vorbis-Header-PurePerl \
		::graphics/ffmpeg \
		::graphics/ImageMagick \
		::net/curl 
RUN_DEPENDS =	${BUILD_DEPENDS}

NO_REGRESS =	Yes

post-install:
	gunzip ${PREFIX}/man/man1/*.1.gz
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnupod
	${INSTALL_DATA} ${WRKSRC}/doc/gnupodrc.example \
		${PREFIX}/share/examples/gnupod/gnupodrc

.include <bsd.port.mk>
