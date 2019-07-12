# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:25 sthen Exp $

COMMENT=	test performance of a remote TCP service

VERSION=	5.2.0
REVISION=	2
DISTNAME=	echoping-${VERSION}
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=echoping/}

HOMEPAGE=	https://github.com/bortzmeyer/echoping

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

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
