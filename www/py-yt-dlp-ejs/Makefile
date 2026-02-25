COMMENT =	external JavaScript for yt-dlp supporting many runtimes

MODPY_DISTV =	0.5.0
DISTNAME =	yt_dlp_ejs-0.5.0-py3-none-any
EXTRACT_SUFX =	.whl
EXTRACT_ONLY =
PKGNAME =	py-yt_dlp_ejs-${MODPY_DISTV}

CATEGORIES =	www

# Unlicense + MIT + ISC
# https://github.com/yt-dlp/ejs#licensing
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	other
SITES =		https://files.pythonhosted.org/packages/py3/y/yt-dlp-ejs/

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "aarch64"
RUN_DEPENDS =	lang/deno
.endif

do-extract:
	mkdir -p ${WRKSRC}/dist
	cp ${FULLDISTDIR}/${DISTFILES} ${WRKSRC}/dist

do-build:

.include <bsd.port.mk>
