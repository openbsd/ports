# $OpenBSD: Makefile,v 1.1.1.1 2005/05/27 23:51:07 mjc Exp $

COMMENT=	"netdude plugin providing traffic analysis"

DISTNAME=	netdude-traffic-analyzer-plugin-0.3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Markus Friedl <markus@openbsd.org> \
		Michael Coulter <mjc@openbsd.org>

BUILD_DEPENDS=	::net/libnetdude/traffic-analyzer \
		::net/netdude/netdude

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
