COMMENT =	external JavaScript for yt-dlp supporting many runtimes

MODPY_DISTV =	0.3.2
DISTNAME =	yt_dlp_ejs-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

SITES.gh =	https://github.com/yt-dlp/ejs/releases/download/${MODPY_DISTV}/
DISTFILES.gh =	${DISTNAME}-{}yt.solver.core.min.js \
		${DISTNAME}-{}yt.solver.lib.min.js

EXTRACT_ONLY =	${DISTFILES}

CATEGORIES =	www

# Unlicense + MIT + ISC
# https://github.com/yt-dlp/ejs#licensing
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	hatch-vcs
MODPY_PI =	Yes

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "aarch64"
RUN_DEPENDS =	lang/deno
.endif

post-extract:
	mkdir ${WRKSRC}/dist
	cp ${FULLDISTDIR}/${DISTNAME}-yt.solver.core.min.js \
		${WRKSRC}/dist/yt.solver.core.min.js
	cp ${FULLDISTDIR}/${DISTNAME}-yt.solver.lib.min.js \
		${WRKSRC}/dist/yt.solver.lib.min.js

.include <bsd.port.mk>
