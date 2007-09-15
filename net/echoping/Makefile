# $OpenBSD: Makefile,v 1.4 2007/09/15 22:36:53 merdely Exp $

COMMENT=	test performance of a remote TCP service

VERSION=	5.2.0
DISTNAME=	echoping-${VERSION}
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=echoping/}

HOMEPAGE=	http://echoping.sourceforge.net/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl

NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-http \
			--enable-icp \
			--enable-smtp \
			--enable-tos \
			--without-libidn \
			--with-ssl=/usr


.include <bsd.port.mk>
