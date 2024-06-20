COMMENT=	tool for editing version-control repository history

DISTNAME=	reposurgeon-4.32
REVISION=	2

CATEGORIES=	devel

HOMEPAGE=	http://www.catb.org/esr/reposurgeon/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

#SITES=	http://www.catb.org/esr/reposurgeon/
# generated from upstream distfile (.tar.xz) with "go mod vendor"
SITES=		https://spacehopper.org/mirrors/

USE_GMAKE=	Yes
MODULES=	lang/go \
		lang/ruby
CONFIGURE_STYLE= x
BUILD_DEPENDS=	textproc/asciidoctor
MODRUBY_RUNDEP=	No

WRKSRC=		${WRKDIST}
WRKBUILD=	${WRKDIST}
MODGO_GOPATH=	${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}:${WRKSRC}/vendor
MAKE_ENV=	GOFLAGS=-v GOMAXPROCS=${MAKE_JOBS}

FAKE_FLAGS=	mandir=man

pre-build:
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby
	ln -sf . ${WRKSRC}/vendor/src

.include <bsd.port.mk>
