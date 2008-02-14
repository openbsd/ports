# $OpenBSD: Makefile,v 1.5 2008/02/14 21:36:27 rui Exp $

COMMENT=	netdude plugin for traffic analysis

DISTNAME=	libnetdude-traffic-analyzer-plugin-0.3
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Rui Reis <rui@openbsd.org>

RUN_DEPENDS=	::net/libnetdude/plugins/conntrack \
		::net/libnetdude/plugins/traceset

BUILD_DEPENDS=	${RUN_DEPENDS}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--datadir=${PREFIX}/lib

.include <bsd.port.mk>
