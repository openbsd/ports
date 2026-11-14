COMMENT=	tool for editing version-control repository history

DISTNAME=	reposurgeon-5.12

CATEGORIES=	devel

HOMEPAGE=	http://www.catb.org/esr/reposurgeon/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

# generated from upstream distfile (.tar.gz) with "go mod vendor"
SITES=		https://messagemode2.com/source/

USE_GMAKE=	Yes
MODULES=	lang/go
CONFIGURE_STYLE= x # override go.port.mk

# doc build needs ruby interpreter as well as asciidoctor
MODULES+=	lang/ruby
BUILD_DEPENDS=	textproc/asciidoctor
MODRUBY_RUNDEP=	No

WRKSRC=		${WRKDIST}
WRKBUILD=	${WRKDIST}
MODGO_GOPATH=	${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}:${WRKSRC}/vendor
MAKE_ENV=	GOFLAGS="${MODGO_FLAGS}"

FAKE_FLAGS=	MANDIR=$(TRUEPREFIX)/man PREFIX=${TRUEPREFIX}

pre-build:
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby
	ln -sf . ${WRKSRC}/vendor/src

# XXX use GO111MODULE for now because cannot find internal/progress
do-build:
	cd ${WRKSRC} && env -i \
		${MAKE_ENV:S/GO111MODULE=off//:S/TMPDIR/NOTTMPDIR/} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${ALL_TARGET}

do-test:
	cd ${WRKSRC} && env -i \
		${MAKE_ENV:S/GO111MODULE=off//:S/TMPDIR/NOTTMPDIR/} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${TEST_TARGET}

.include <bsd.port.mk>
