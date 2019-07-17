# $OpenBSD: Makefile,v 1.13 2019/07/17 14:46:33 danj Exp $

COMMENT=	test performance of a remote TCP service

VERSION=	5.2.0
REVISION=	3
DISTNAME=	echoping-${VERSION}
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=echoping/}

HOMEPAGE=	https://github.com/bortzmeyer/echoping

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c crypto m ssl

NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-http \
			--enable-icp \
			--enable-smtp \
			--enable-tos \
			--without-libidn \
			--with-ssl=/usr


.include <bsd.port.mk>
