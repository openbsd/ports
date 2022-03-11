COMMENT=	read and set MPEG-4/3GPP metadata tags

GH_ACCOUNT=	wez
GH_PROJECT=	atomicparsley
GH_TAGNAME=	20210715.151551.e7ad03a

DISTNAME=	atomicparsley-20210715

CATEGORIES=	multimedia

# GPLv2 "or its successor"
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

# Don't use git to retrieve the build version
CONFIGURE_ARGS +=	-DGIT= \
			-DPACKAGE_VERSION="${PKGNAME} (${GH_TAGNAME})"

NO_TEST =	Yes

.include <bsd.port.mk>
