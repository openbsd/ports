# $OpenBSD: Makefile,v 1.8 2014/01/01 20:46:28 naddy Exp $

COMMENT=	test performance of a remote TCP service

VERSION=	5.2.0
DISTNAME=	echoping-${VERSION}
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=echoping/}

HOMEPAGE=	http://echoping.sourceforge.net/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
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
