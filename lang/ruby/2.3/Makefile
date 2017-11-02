# $OpenBSD: Makefile,v 1.21 2017/11/02 10:16:38 jeremy Exp $

VERSION =		2.3.5
NEXTVER =		2.4
SHARED_LIBS =		ruby${BINREV}	2.0

COMMENT-tk =		tk interface for ruby
PKGNAME-tk =		ruby${BINREV}-tk-${VERSION}

PSEUDO_FLAVORS=		no_tk no_ri_docs bootstrap
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mhppa}
FLAVOR?=		no_ri_docs bootstrap
.else
FLAVOR?=
.endif

MULTI_PACKAGES =	-main -gdbm -tk -ri_docs
.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-tk}
CONFIGURE_ARGS+=	--with-tcl-include=${LOCALBASE}/include/tcl8.5 \
			--with-tk-include=${LOCALBASE}/include/tk8.5 \
			--with-tcllib=tcl85 \
			--with-tklib=tk85 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk =		X11 c gmp m pthread ruby${BINREV} tcl85 tk85
LIB_DEPENDS-tk =	tk->=8.5,<8.6:x11/tk/8.5 \
			devel/gmp \
			lang/ruby/${REV},-main>=${VERSION},<${NEXTVER}
RUN_DEPENDS-tk =
.endif

.if ${BUILD_PACKAGES:M-ri_docs}
ALL_TARGET +=		rdoc
INSTALL_TARGET +=	install-doc
.endif

post-extract:
	${POST_EXTRACT}

pre-configure:
	${FIX_RIPPER}

pre-install:
	${PRE_INSTALL}

post-install:
	${FIX_RBCONFIG}
	chmod 444 ${PREFIX}/lib/ruby/gems/${REV}/{cache,specifications}/*.gem*

# 16021 tests, 2256593 assertions, 3 failures, 5 errors, 127 skips
do-test:
	-cd ${WRKSRC} && make test-sample
	-cd ${WRKSRC} && make btest-ruby
	cd ${WRKSRC} && make test-all TESTOPTS="-v -q"

.include <bsd.port.mk>
