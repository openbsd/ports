# $OpenBSD: Makefile,v 1.7 2013/03/11 11:35:46 espie Exp $

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

USE_GROFF =		Yes
NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-http \
			--enable-icp \
			--enable-smtp \
			--enable-tos \
			--without-libidn \
			--with-ssl=/usr


.include <bsd.port.mk>
