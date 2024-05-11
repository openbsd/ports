COMMENT=	chemistry file translation program

V=		3.1.1
REVISION=	2
DISTNAME=	openbabel-${V}

CATEGORIES=	misc

SHARED_LIBS +=	coordgen	0.0 \
		inchi		0.0 \
		maeparser	0.0 \
		openbabel	6.1

HOMEPAGE=	https://openbabel.org

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+=	${COMPILER_LIBCXX} boost_iostreams-mt boost_regex-mt
WANTLIB+=	c cairo m xml2 z

SITES=		https://github.com/openbabel/openbabel/releases/download/openbabel-${V:S/./-/g}/
EXTRACT_SUFX=	-source.tar.bz2

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		lang/python
MODPY_RUNDEP=	No
MODPY_BUILDDEP=	No

LIB_DEPENDS=	devel/boost \
		graphics/cairo \
		textproc/libxml

BUILD_DEPENDS=	math/eigen3

CONFIGURE_ARGS=	-DBUILD_GUI=OFF

SEPARATE_BUILD=	No

SUBST_VARS=	V

.include <bsd.port.mk>
