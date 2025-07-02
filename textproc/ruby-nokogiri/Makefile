COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.18.8

CATEGORIES=		textproc

HOMEPAGE=		https://nokogiri.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c++abi exslt xml2 xslt z

LIB_DEPENDS=		textproc/libxslt
BUILD_DEPENDS=		devel/ruby-mini_portile2,${MODRUBY_FLAVOR}>=2.8.2,<2.9

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

CONFIGURE_ENV+=		NOKOGIRI_LIBXML_MEMORY_MANAGEMENT=default
CONFIGURE_ARGS=		--use-system-libraries \
			--with-xml2-include=${LOCALBASE}/include/libxml2/

.include <bsd.port.mk>
