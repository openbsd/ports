# $OpenBSD: Makefile,v 1.2 2000/06/25 00:50:38 brad Exp $

DISTNAME=	nemesis-1.1
CATEGORIES=	net security
NEED_VERSION=	1.301
MASTER_SITES=	http://celerity.bartoli.org/nemesis/ \
		http://www.packetfactory.net/Projects/nemesis/ \
		http://www.nol.net/~halogen/

HOMEPAGE=	http://celerity.bartoli.org/nemesis/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

MAINTAINER=	halogen@nol.net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --with-net-lib="${LOCALBASE}/lib" \
		--with-net-inc="${LOCALBASE}/include"

WRKDIST=	${WRKDIR}/nemesis

.include <bsd.port.mk>
