COMMENT=	single window & tabbed version of the ZynAddSubFX interface

PKGNAME=	mruby-zest-20210207

GH_ACCOUNT=	mruby-zest
GH_PROJECT=	mruby-zest-build
GH_COMMIT=	f1eeda675f6bbda1d2f9f1454ec0d84e0632e603

CATEGORIES=	x11

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB+=	GL X11 c m pthread uv

MASTER_SITES0=	https://github.com/

MRUBY=		mruby-{mruby/mruby/archive/}69482dbc8e590ed66f0944e9b48c4f9c2f83c873

DEPS=		nanovg-{memononen/nanovg/archive/}b83cf926525e7cea8d2483da2a75852b8c7b6d28 \
		mruby-sleep-{matsumoto-r/mruby-sleep/archive/}263d70351a4f75a875f2a35ab9a9128d1ef5da90 \
		mruby-dir-glob-{gromnitsky/mruby-dir-glob/archive/}334c040a2e2c4c2689f8c3440168011f64d57ada \
		mruby-regexp-pcre-{iij/mruby-regexp-pcre/archive/}a961225c0953dd2bd987111f0836821573616de2 \
		mruby-set-{yui-knk/mruby-set/archive/}68334311ac7386eef84f3034a256e7135a87625d \
		rtosc-{fundamental/rtosc/archive/}6a65b24469068a8f334567b72a3125bd1d7fd1b1 \
		mruby-io-{iij/mruby-io/archive/}1c4428880b2f0f0fcd81ea2debc5f4459a7ed53c \
		mruby-glew-{IceDragon200/mruby-glew/archive/}6849202f885516b381406e799dcdb430065e19cf \
		mruby-glfw3-{IceDragon200/mruby-glfw3/archive/}0eeee012fd4bbd6544dd34f17ce2b476ad71d86b \
		mruby-nanovg-{mruby-zest/mruby-nanovg/archive/}d7d4e1ce434131babb5fd6026201011f5b0b50ea \
		mruby-complex-{pbosetti/mruby-complex/archive/}4f57a1ef9f968e9d5eef53667c7960a2e98c9750 \
		mruby-dir-{iij/mruby-dir/archive/}89dceefa1250fb1ae868d4cb52498e9e24293cd1 \
		mruby-errno-{iij/mruby-errno/archive/}b4415207ff6ea62360619c89a1cff83259dc4db0 \
		mruby-file-stat-{ksss/mruby-file-stat/archive/}66cf135ff9642d96a6127a79b307f6314e606deb \
		mruby-process-{iij/mruby-process/archive/}fe171fbe2a6cc3c2cf7d713641bddde71024f7c8

SRCS=		osc-bridge-{mruby-zest/osc-bridge/archive/}c678428bf164fc732ab4c7ee903bc8952bff6fbc \
		mruby-qml-spawn-{mruby-zest/mruby-qml-spawn/archive/}7c1283a96a44f83c0077d67ad2510c9555dbb010 \
		mruby-zest-{mruby-zest/mruby-zest/archive/}238dfbad266186e3ffc679a00a87aec472ce956b \
		mruby-qml-parse-{mruby-zest/mruby-qml-parse/archive/}3e2c32cc55c60027e6406eca89bf1ae5301aa16b \

DISTFILES=	zyn-fusion-{}${GH_COMMIT}${EXTRACT_SUFX} \
		${DEPS:C/$/.tar.gz:0/} \
		${SRCS:C/$/.tar.gz:0/} \
		${MRUBY:C/$/.tar.gz:0/}

MODULES=	lang/ruby
MODRUBY_RUNDEP=	No

LIB_DEPENDS=	devel/libuv

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib" RUBY=${RUBY} RAKE=${RAKE} CC=${CC} \
		CXX=${CXX} LD=${CC}

NO_TEST=	Yes

post-extract:
	mv ${WRKDIR}/${MRUBY:C/{.*}//}/* ${WRKSRC}/mruby
.for dep in ${DEPS:C/{.*}//}
	mv ${WRKDIR}/${dep}/* ${WRKSRC}/deps/${dep:C/-[a-z0-9]{40}//}
.endfor
.for src in ${SRCS:C/{.*}//}
	mv ${WRKDIR}/${src}/* ${WRKSRC}/src/${src:C/-[a-z0-9]{40}//}
.endfor

post-patch:
	${SUBST_CMD} ${WRKSRC}/{build_config.rb,test-libversion.c}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zest ${PREFIX}/libexec/zyn-fusion
.for dir in qml schema font
	${INSTALL_DATA_DIR} ${PREFIX}/share/zynaddsubfx/${dir}
.endfor
	cp ${WRKSRC}/libzest.so ${PREFIX}/share/zynaddsubfx
	cp -r ${WRKSRC}/src/mruby-zest/qml/* ${PREFIX}/share/zynaddsubfx/qml
	cp -r ${WRKSRC}/src/mruby-zest/example/* ${PREFIX}/share/zynaddsubfx/qml
	cp -r ${WRKSRC}/src/osc-bridge/schema/test.json ${PREFIX}/share/zynaddsubfx/schema
	cp -r ${WRKSRC}/deps/nanovg/example/*.ttf ${PREFIX}/share/zynaddsubfx/font

.include <bsd.port.mk>
