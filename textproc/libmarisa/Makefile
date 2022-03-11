COMMENT-main =		C++ library for MARISA matching algorithm
COMMENT-perl =		marisa-trie bindings for Perl (SWIG)
COMMENT-python =	marisa-trie bindings for Python (SWIG)
COMMENT-ruby =		marisa-trie bindings for Ruby (SWIG)

V =			0.2.6
PKGNAME-main =		libmarisa-${V}
PKGNAME-perl =		p5-libmarisa-${V}
PKGNAME-python =	py3-libmarisa-${V}
PKGNAME-ruby =		ruby-libmarisa-${V}

REVISION-main =		1
REVISION-python =	0

GH_ACCOUNT =	s-yata
GH_PROJECT =	marisa-trie
GH_TAGNAME =	v${V}

SHARED_LIBS +=	marisa			0.0 # 0.0

CATEGORIES =	textproc

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# dual license: either BSD 2-clause or LGPLv2.1+
PERMIT_PACKAGE =	Yes

PSEUDO_FLAVORS =	no_perl no_python no_ruby
FLAVOR? =

MULTI_PACKAGES =	-main -perl -python -ruby

RUN_DEPENDS-main =	# empty
WANTLIB-main += ${COMPILER_LIBCXX} c m

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-perl} || ${BUILD_PACKAGES:M-python} || ${BUILD_PACKAGES:M-ruby}
BUILD_DEPENDS +=	devel/swig
.endif

.if ${BUILD_PACKAGES:M-perl}
MODULES +=		perl
LIB_DEPENDS-perl =	${BUILD_PKGPATH},-main=${V}
RUN_DEPENDS-perl =	# empty
WANTLIB-perl =		c marisa perl
.endif

.if ${BUILD_PACKAGES:M-python}
MODULES +=		lang/python
LIB_DEPENDS-python =	${BUILD_PKGPATH},-main=${V}
RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS}
WANTLIB-python =	${COMPILER_LIBCXX} m marisa
.endif

.if ${BUILD_PACKAGES:M-ruby}
MODULES +=		lang/ruby
LIB_DEPENDS-ruby =	${BUILD_PKGPATH},-main=${V}
RUN_DEPENDS-ruby =	${MODRUBY_RUN_DEPENDS}
WANTLIB-ruby =		${COMPILER_LIBCXX} c m marisa pthread
.endif

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	--enable-sse2
.endif

post-build:
.if ${BUILD_PACKAGES:M-perl}
	cd ${WRKDIST}/bindings && make swig-perl
	cd ${WRKDIST}/bindings/perl && \
	    perl Makefile.PL \
	    INC="-I${WRKSRC}/include" \
	    LIBS="-L${WRKSRC}/lib/marisa/.libs -lmarisa" && \
	    ${MAKE} ${MAKE_FLAGS}
.endif
.if ${BUILD_PACKAGES:M-python}
	cd ${WRKDIST}/bindings && make swig-python
	cd ${WRKDIST}/bindings/python && \
	    ${MODPY_BIN} setup.py build_ext \
	    --include-dirs=${WRKSRC}/include/ \
	    --library-dirs=${WRKSRC}/lib/marisa/.libs
.endif
.if ${BUILD_PACKAGES:M-ruby}
	cd ${WRKDIST}/bindings && make swig-ruby
	cd ${WRKDIST}/bindings/ruby && \
	    ${RUBY} extconf.rb \
	    --with-opt-include=${WRKSRC}/include \
	    --with-opt-lib=${WRKSRC}/lib/marisa/.libs && \
	    ${MAKE} ${MAKE_FLAGS}
.endif

post-install:
.if ${BUILD_PACKAGES:M-perl}
	cd ${WRKDIST}/bindings/perl && \
	    ${MAKE} ${MAKE_FLAGS} install
.endif
.if ${BUILD_PACKAGES:M-python}
	cd ${WRKDIST}/bindings/python && \
	    ${MODPY_BIN} setup.py ${MODPY_DISTUTILS_INSTALL}
.endif
.if ${BUILD_PACKAGES:M-ruby}
	cd ${WRKDIST}/bindings/ruby && \
	    ${MAKE} ${MAKE_FLAGS} install INSTALL_PROG="${INSTALL_SCRIPT}"
.endif

.include <bsd.port.mk>
