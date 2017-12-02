# $OpenBSD: Makefile,v 1.34 2017/12/02 18:18:21 ajacoutot Exp $

COMMENT=		X keygrabber for blackbox

DISTNAME=		bbkeys-0.9.1
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bbkeys/}

HOMEPAGE=		http://bbkeys.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext Xft c iconv m

LIB_DEPENDS=		converters/libiconv

BUILD_DEPENDS=		x11/blackbox
RUN_DEPENDS=		x11/blackbox

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
