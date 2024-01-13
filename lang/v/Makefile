ONLY_FOR_ARCHS =amd64 arm64

COMMENT =	simple, fast, safe, compiled language

V_V =		0.4.4
VC_V =		f33c54ece86140792e054bf33afd6c4b76637234
MARKDOWN_V =	0c280130cb7ec410b7d21810d1247956c15b72fc

DIST_TUPLE =	github	vlang	v	${V_V}	.
DIST_TUPLE +=	github	vlang	vc	${VC_V}	vc
DIST_TUPLE +=	github	vlang	markdown ${MARKDOWN_V} .vmodules/markdown

CATEGORIES =	lang

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += X11 c m pthread

BUILD_DEPENDS =	devel/boehm-gc
RUN_DEPENDS =	devel/boehm-gc

# ~/.vmodules
PORTHOME =	${WRKDIST}

pre-extract:
	mkdir -p ${WRKSRC}/.vmodules

# Build the bootstrapping compiler
pre-build:
	cd ${WRKSRC} && exec ${SETENV} ${MAKE_ENV} HOME=${PORTHOME} ${MAKE_PROGRAM} v

# Instructions on preparing V for packaging
# https://github.com/vlang/v/blob/master/doc/packaging_v_for_distributions.md
do-build:
	cp ${FILESDIR}/v{self,up}.v ${WRKSRC}/cmd/tools/
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} HOME=${PORTHOME} ./v -prod -o v cmd/v && \
		${SETENV} ${MAKE_ENV} HOME=${PORTHOME} ./v -prod build-tools
	touch ${WRKSRC}/cmd/tools/.disable_autorecompilation

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/vlang ${PREFIX}/lib/vlang
	cd ${WRKSRC}/examples && pax -rw . ${PREFIX}/share/examples/vlang
	cd ${WRKSRC}/doc && pax -rw . ${PREFIX}/share/doc/vlang
	cd ${WRKSRC} && pax -rw cmd thirdparty vlib v.mod ${PREFIX}/lib/vlang
	${INSTALL_PROGRAM} ${WRKSRC}/v ${PREFIX}/lib/vlang
	${SUBST_CMD} -c -m 755 ${FILESDIR}/v ${PREFIX}/bin/v
	find ${PREFIX} -type f -name \*.orig.port -delete

do-test:
	cd ${WRKSRC} && ./v test-all

.include <bsd.port.mk>
