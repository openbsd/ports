# $OpenBSD: Makefile,v 1.3 2007/01/14 20:49:06 simon Exp $

COMMENT=	"Perl module for encoding/decoding network traffic"

MODULES=	cpan
DISTNAME=	NetPacket-0.04
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	net

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::net/p5-Net-Pcap

NO_REGRESS=	Yes

post-install:
	@find ${WRKINST} -name '*.orig' | xargs rm

.include <bsd.port.mk>
