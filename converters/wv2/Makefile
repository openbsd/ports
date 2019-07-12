# $OpenBSD: Makefile,v 1.39 2019/07/12 20:43:52 sthen Exp $

COMMENT=	library functions to access Microsoft Word/Excel files

REVISION =	4
DISTNAME=	wv2-0.4.2
SHARED_LIBS +=	wv2                  4.0      # .1.8
CATEGORIES=	converters
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://wvware.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB += glib-2.0 gsf-1 iconv m ${COMPILER_LIBCXX} z

MODULES=	devel/cmake

LIB_DEPENDS+=	converters/libiconv \
		devel/glib2 \
		devel/libgsf

CONFIGURE_ARGS +=-DLIBwv2_VERSION=${LIBwv2_VERSION}

.include <bsd.port.mk>
