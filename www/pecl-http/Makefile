# $OpenBSD: Makefile,v 1.1.1.1 2014/01/15 00:18:30 dlg Exp $

COMMENT=	extended HTTP support
_PECLMOD=	http
V=		2.0.4
PKGNAME=	pecl-${_PECLMOD}-${V}
DISTNAME=	pecl_${_PECLMOD}-${V}

# PHP
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

WANTLIB+=	z
RUN_DEPENDS+=	www/pecl-raphf \
		www/pecl-propro
BUILD_DEPENDS+=	${RUN_DEPENDS}
LIB_DEPENDS=	net/curl

.include <bsd.port.mk>
