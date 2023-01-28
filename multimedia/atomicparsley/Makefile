COMMENT=	read and set MPEG-4/3GPP metadata tags

GH_ACCOUNT=	wez
GH_PROJECT=	atomicparsley
GH_TAGNAME=	20221229.172126.d813aa6

DISTNAME=	atomicparsley-20221229

CATEGORIES=	multimedia

# GPLv2 "or its successor"
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

# Don't use git to retrieve the build version
CONFIGURE_ARGS=	-DGIT= \
		-DPACKAGE_VERSION="${GH_TAGNAME}"

do-test:
	cd ${WRKSRC}; \
	    ln -fs ../build*/AtomicParsley; \
	    ksh tests/test.sh

.include <bsd.port.mk>
