COMMENT=	yt-dlp wrapper to manage youtube audio

MODPY_DISTV=	0.2.3
DISTNAME=	yt_audio_cli-${MODPY_DISTV}
PKGNAME=	yt-audio-cli-${MODPY_DISTV}
CATEGORIES=	audio

HOMEPAGE=	https://github.com/pyyupsk/yt-audio-cli

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-rich \
		devel/py-typer \
		www/yt-dlp \
		graphics/ffmpeg

# not in sdist
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yt-audio-cli
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/yt-audio-cli/

.include <bsd.port.mk>
