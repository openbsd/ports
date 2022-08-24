COMMENT=	tool for editing version-control repository history

DISTNAME=	reposurgeon-4.32
#EXTRACT_SUFX=	.tar.xz

CATEGORIES=	devel

HOMEPAGE=	http://www.catb.org/esr/reposurgeon/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

#MASTER_SITES=	http://www.catb.org/esr/reposurgeon/
# generated from upstream distfile with "go mod vendor"
MASTER_SITES=	https://spacehopper.org/mirrors/

USE_GMAKE=	Yes
MODULES=	lang/go \
		lang/ruby
CONFIGURE_STYLE= x
BUILD_DEPENDS=	textproc/asciidoctor
MODRUBY_RUNDEP=	No

WRKSRC=		${WRKDIST}
WRKBUILD=	${WRKDIST}
MODGO_GOPATH=	${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}:${WRKSRC}/vendor

FAKE_FLAGS=	mandir=man

pre-build:
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby
	ln -sf . ${WRKSRC}/vendor/src

.include <bsd.port.mk>
