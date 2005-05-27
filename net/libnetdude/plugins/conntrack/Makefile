# $OpenBSD: Makefile,v 1.1.1.1 2005/05/27 23:36:37 mjc Exp $

COMMENT=	"libnetdude plugin for tcp connection tracking"

DISTNAME=	libnetdude-conntrack-plugin-0.5
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Markus Friedl <markus@openbsd.org> \
		Michael Coulter <mjc@openbsd.org>

BUILD_DEPENDS=	::net/libnetdude/libnetdude

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
