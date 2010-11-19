# $OpenBSD: Makefile,v 1.8 2010/11/19 22:31:34 espie Exp $

COMMENT=	netdude plugin for traffic analysis

DISTNAME=	libnetdude-traffic-analyzer-plugin-0.3
REVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Rui Reis <rui@openbsd.org>

RUN_DEPENDS=	net/libnetdude/plugins/conntrack \
		net/libnetdude/plugins/traceset

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/libtool,-ltdl

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--datadir=${PREFIX}/lib

.include <bsd.port.mk>
