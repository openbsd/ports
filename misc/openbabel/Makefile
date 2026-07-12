COMMENT=	chemistry file translation program

V=		3.2.1
DIST_TUPLE=	github openbabel openbabel openbabel-${V:S/./-/g} . \
		github schrodinger maeparser v1.3.3 maeparser \
		github schrodinger coordgenlibs d20e735d96480385b2e257522288004038a08cc9 coordgen
PKGNAME=	openbabel-${V}

CATEGORIES=	misc

SHARED_LIBS=	coordgen	1.0 \
		inchi		1.0 \
		maeparser	1.0 \
		openbabel	8.0

HOMEPAGE=	https://openbabel.org

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} boost_iostreams-mt boost_regex-mt \
		c cairo m xml2 z boost_random-mt

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		lang/python
MODPY_RUNDEP=	No
MODPY_BUILDDEP=	No

LIB_DEPENDS=	devel/boost \
		graphics/cairo \
		textproc/libxml

BUILD_DEPENDS=	math/eigen3 \
		textproc/rapidjson

CONFIGURE_ARGS=	-DBUILD_GUI=OFF

SEPARATE_BUILD=	No

SUBST_VARS=	V

.include <bsd.port.mk>
