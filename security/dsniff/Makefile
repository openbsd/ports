# $OpenBSD: Makefile,v 1.20 2001/02/26 03:57:45 brad Exp $

DISTNAME=	dsniff-2.3
CATEGORIES=	security
NEED_VERSION=	1.336
MASTER_SITES=	http://www.monkey.org/~dugsong/dsniff/

HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	${LOCALBASE}/lib/libnids.a::net/libnids

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS=	--without-x
.else
USE_X11=	Yes
.endif

FAKE_FLAGS=	install_prefix="${WRKINST}"

.include <bsd.port.mk>
