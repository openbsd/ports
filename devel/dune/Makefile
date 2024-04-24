MULTI_PACKAGES =	-main -configurator

COMMENT-main =		OCaml build system
COMMENT-configurator =	OCaml library for gathering system configuration

VERSION =		3.6.2
REVISION-main =		2
REVISION-configurator =	0

CATEGORIES =		devel

GH_ACCOUNT =		ocaml
GH_PROJECT =		dune
GH_TAGNAME =		${VERSION}

SITES = 	https://github.com/ocaml/dune/releases/download/${VERSION}/
EXTRACT_SUFX = .tbz

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB-main =		c m pthread

MODULES =		lang/ocaml

RUN_DEPENDS-configurator = devel/dune

CONFIGURE_STYLE =	simple

# Set default installation directories
# These affect runtime behavior later!
CONFIGURE_ARGS =	--bindir ${TRUEPREFIX}/bin \
			--sbindir ${TRUEPREFIX}/sbin \
			--datadir ${TRUEPREFIX}/share \
			--etcdir ${SYSCONFDIR} \
			--libdir ${TRUEPREFIX}/lib/ocaml \
			--libexecdir ${TRUEPREFIX}/lib/ocaml \
			--mandir ${TRUEPREFIX}/man \
			--docdir ${TRUEPREFIX}/share/doc

MAKE_ENV +=		JOBS=${MAKE_JOBS}

USE_GMAKE =		Yes

ALL_TARGET =		release

FAKE_FLAGS =		PREFIX=${TRUEPREFIX} LIBDIR=${PREFIX}/lib/ocaml
INSTALL_TARGET =	doc install

post-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} \
	./dune.exe build -j${MAKE_JOBS} --display=short \
	stdune.install dune-configurator.install

do-install:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${FAKE_SETUP} \
	./dune.exe install -j${MAKE_JOBS} --display=short \
	dune stdune dune-configurator

.include <bsd.port.mk>
