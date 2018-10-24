# $OpenBSD: Makefile,v 1.35 2018/10/24 14:28:12 sthen Exp $

COMMENT=		X keygrabber for blackbox

DISTNAME=		bbkeys-0.9.1
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bbkeys/}
REVISION=		0

HOMEPAGE=		http://bbkeys.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext Xft c iconv m

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		converters/libiconv

BUILD_DEPENDS=		x11/blackbox
RUN_DEPENDS=		x11/blackbox

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
