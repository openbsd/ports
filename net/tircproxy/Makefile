# $OpenBSD: Makefile,v 1.7 2000/04/16 16:06:21 brad Exp $

DISTNAME=	tircproxy-0.4.3
CATEGORIES=     net
NEED_VERSION=	1.234
MASTER_SITES=	http://bre.klaki.net/programs/tircproxy/

MAINTAINER=	garath@ntplx.net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}'

INSTALL_TARGET=	install-strip

WRKDIST=	${WRKDIR}/tircproxy-0.4

.include <bsd.port.mk>
