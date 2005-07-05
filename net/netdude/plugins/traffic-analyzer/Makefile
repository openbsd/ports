# $OpenBSD: Makefile,v 1.3 2005/07/05 00:08:09 mjc Exp $

COMMENT=	"netdude plugin providing traffic analysis"

DISTNAME=	netdude-traffic-analyzer-plugin-0.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Markus Friedl <markus@openbsd.org> \
		Michael Coulter <mjc@openbsd.org>

RUN_DEPENDS=	::net/libnetdude/plugins/traffic-analyzer \
		::net/netdude/netdude

BUILD_DEPENDS=	${RUN_DEPENDS}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--datadir=${PREFIX}/lib

.include <bsd.port.mk>
