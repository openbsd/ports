COMMENT =		music downloader for Qobuz

MODPY_DISTV =		2.3.1

DISTNAME =		qobuz_dl_ultimate-${MODPY_DISTV}
PKGNAME=		qobuz-dl-${MODPY_DISTV}

CATEGORIES =		www audio

HOMEPAGE =		https://github.com/Sei969/qobuz-dl

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		audio/py-mutagen \
			devel/py-colorama \
			devel/py-pathvalidate \
			devel/py-pick \
			devel/py-tqdm \
			graphics/ffmpeg \
			security/py-cryptography \
			www/py-beautifulsoup4 \
			www/py-requests

# tests don't exist
NO_TEST =		Yes

.include <bsd.port.mk>
