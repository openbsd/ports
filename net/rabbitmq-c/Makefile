COMMENT=	rabbitmq C library and commandline AMQP utilities

GH_ACCOUNT=	alanxz
GH_PROJECT=	rabbitmq-c
GH_TAGNAME=	v0.14.0

SHARED_LIBS =	rabbitmq 2.0 # 10.0.6

CATEGORIES=	net

MAINTAINER=	Volker Schlecht <openbsd-ports@schlecht.dev>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

WANTLIB=	c crypto popt pthread ssl

LIB_DEPENDS=	devel/popt
BUILD_DEPENDS=	textproc/xmlto

CONFIGURE_ARGS=	-DBUILD_TOOLS_DOCS=ON \
		-DBUILD_TOOLS=ON \
		-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=True \
		-DBUILD_API_DOCS=OFF

.include <bsd.port.mk>
