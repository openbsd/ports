# $OpenBSD: Makefile,v 1.45 2019/07/12 21:02:19 sthen Exp $

COMMENT=	toolkit for the development of SILC applications

DISTNAME=	silc-toolkit-1.1.12
REVISION=	5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=silc/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	silc		10.0	\
		silcclient	8.0	\

HOMEPAGE=	http://silcnet.org/dev.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	iconv pthread

LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+= --disable-asm \
		--docdir=${PREFIX}/share/doc/silc \
		--includedir=${PREFIX}/include/silc

.include <bsd.port.mk>
