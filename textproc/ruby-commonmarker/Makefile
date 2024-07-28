COMMENT =	ruby wrapper for comrak rust crate

DISTNAME =	commonmarker-1.0.3
CATEGORIES =	textproc
HOMEPAGE =	https://github.com/gjtorikian/commonmarker
REVISION =	1

# MIT License
PERMIT_PACKAGE =	Yes

MODULES =	devel/cargo \
		lang/ruby

WANTLIB +=	${MODCARGO_WANTLIB} onig

BUILD_DEPENDS =	devel/ruby-rb_sys,${MODRUBY_FLAVOR}>=0.9 \
		devel/llvm/16,-main
LIB_DEPENDS =	textproc/oniguruma
RUN_DEPENDS =	devel/ruby-rb_sys,${MODRUBY_FLAVOR}>=0.9

CONFIGURE_STYLE = ruby gem ext cargo

MODCARGO_CRATES_UPDATE +=	time
MODCARGO_CRATES +=	time		0.3.36
MODCARGO_CRATES +=	time-macros	0.2.18
MODCARGO_CRATES +=	num-conv	0.1.0

MODCARGO_VENDOR_DIR = ${WRKDIR}/modcargo-crates
MODCARGO_BUILD = No
MODCARGO_INSTALL = No

USE_GMAKE = Yes
CONFIGURE_ENV =	MAKE=gmake
MAKE_ENV =	MAKE=gmake \
		RUBY=${RUBY} \
		HOME=${WRKSRC} \
		LIBCLANG_PATH=${PREFIX}/llvm16/lib \
		RB_SYS_EXTRA_CARGO_ARGS=--verbose \
		RB_SYS_VERBOSE=true \
		CARGO_TERM_VERBOSE=true \
		RUST_BACKTRACE=1 \
		V=1 \
		${MODCARGO_ENV}

.include "crates.inc"

.include <bsd.port.mk>
