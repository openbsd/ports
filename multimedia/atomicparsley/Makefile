COMMENT=	read and set MPEG-4/3GPP metadata tags

GH_ACCOUNT=	wez
GH_PROJECT=	atomicparsley
#GH_TAGNAME=	20210715.151551.e7ad03a
GH_COMMIT=	d175531126e63b22ff96f2930dce6ca86a50b412

DISTNAME=	atomicparsley-20220331

CATEGORIES=	multimedia

# GPLv2 "or its successor"
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

# Don't use git to retrieve the build version
CONFIGURE_ARGS +=	-DGIT= \
			-DPACKAGE_VERSION="${PKGNAME} (${GH_TAGNAME})"

do-test:
	cd ${WRKSRC}; \
	    ln -fs ../build*/AtomicParsley; \
	    ksh tests/test.sh

.include <bsd.port.mk>
