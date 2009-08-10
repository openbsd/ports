# $OpenBSD: Makefile,v 1.5 2009/08/10 18:46:49 jasper Exp $

COMMENT =	collection of perl scripts to manage your iPod

DISTNAME =	gnupod-0.99.7
PKGNAME =	p5-${DISTNAME}p0
CATEGORIES =	audio

HOMEPAGE =	http://www.gnu.org/software/gnupod/
MASTER_SITES =	http://blinkenlights.ch/gnupod-dist/stable/ \
		${MASTER_SITE_SAVANNAH:=gnupod/}

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

EXTRACT_SUFX =	.tgz
MODULES =	perl

CONFIGURE_STYLE =gnu

RUN_DEPENDS =	::security/p5-Digest-SHA1 \
		::textproc/p5-XML-Parser \
		::converters/p5-Unicode-String \
		::audio/p5-MP3-Info \
		::www/p5-libwww \
		::devel/p5-Time-TimeDate \
		::audio/p5-Audio-FLAC-Header \
		::audio/p5-Ogg-Vorbis-Header-PurePerl \
		::graphics/ffmpeg \
		::graphics/ImageMagick \
		::net/curl 
BUILD_DEPENDS=	${RUN_DEPENDS}

NO_REGRESS =	Yes

post-install:
	gunzip ${PREFIX}/man/man1/*.1.gz
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnupod
	${INSTALL_DATA} ${WRKSRC}/doc/gnupodrc.example \
		${PREFIX}/share/examples/gnupod/gnupodrc

.include <bsd.port.mk>
