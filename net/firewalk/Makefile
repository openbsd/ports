# $OpenBSD: Makefile,v 1.5 1999/04/01 00:24:49 brad Exp $

PKGNAME=	firewalk-0.7c
DISTNAME=	firewalk-final-0.7c
CATEGORIES=     net
MASTER_SITES=	ftp://ftp.technotronic.com/unix/security-tools/
# Due to 0.7c is named as .gz, but really was uncompressed!
EXTRACT_ARGS=	-xf

MIRROR_DISTFILE=no

MAINTAINER=	dugsong@monkey.org

WRKSRC=		${WRKDIR}/Firewalk

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include" \
		LDFLAGS="-L/usr/local/include"

ALL_TARGET=	firewalk

.include <bsd.port.mk>
