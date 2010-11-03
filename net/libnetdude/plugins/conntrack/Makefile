# $OpenBSD: Makefile,v 1.7 2010/11/03 16:18:43 jasper Exp $

COMMENT=	libnetdude plugin for tcp connection tracking

DISTNAME=	libnetdude-conntrack-plugin-0.8
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Rui Reis <rui@openbsd.org>

RUN_DEPENDS=	::net/libnetdude/libnetdude

BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/libtool,-ltdl

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--datadir=${PREFIX}/lib

.include <bsd.port.mk>
