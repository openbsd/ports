COMMENT=	rabbitmq C library and commandline AMQP utilities

V= 		0.13.0
GH_ACCOUNT=	alanxz
GH_PROJECT=	rabbitmq-c
GH_TAGNAME=	v${V}
DISTNAME=	${GH_PROJECT}-${V}

SHARED_LIBS =	rabbitmq 1.0 # 9.4

CATEGORIES=	net

MAINTAINER=	Gregor Best <gbe@unobtanium.de>

# MIT
PERMIT_PACKAGE =	Yes

MODULES=	devel/cmake

WANTLIB=	c crypto popt pthread ssl

LIB_DEPENDS=	devel/popt
BUILD_DEPENDS=	textproc/xmlto

CONFIGURE_ARGS=	-DBUILD_TOOLS_DOCS=ON \
		-DBUILD_TOOLS=ON \
		-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=True \
		-DBUILD_API_DOCS=OFF

.include <bsd.port.mk>
