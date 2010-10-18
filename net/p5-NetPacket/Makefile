# $OpenBSD: Makefile,v 1.7 2010/10/18 18:36:55 espie Exp $

COMMENT=	Perl module for encoding/decoding network traffic

MODULES=	cpan
DISTNAME=	NetPacket-0.04
REVISION=	2
CATEGORIES=	net
USE_GROFF =	Yes

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::net/p5-Net-Pcap

NO_REGRESS=	Yes

post-install:
	@find ${WRKINST} -name '*.orig' | xargs rm

.include <bsd.port.mk>
