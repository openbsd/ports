# $OpenBSD: Makefile,v 1.15 2000/10/02 20:06:07 dugsong Exp $

DISTNAME=	dsniff-2.2

CATEGORIES=	security

NEED_VERSION=	1.310

MASTER_SITES=	http://www.monkey.org/~dugsong/dsniff/
HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	${LOCALBASE}/lib/libnet.a::net/libnet \
		${LOCALBASE}/lib/libnids.a::net/libnids

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == no_x11
CONFIGURE_ARGS+=--without-x
.endif

FAKE_FLAGS=	install_prefix="${WRKINST}"

.include <bsd.port.mk>
