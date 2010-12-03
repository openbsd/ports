# $OpenBSD: Makefile,v 1.9 2010/12/03 11:45:43 ajacoutot Exp $

COMMENT=	Perl module for encoding/decoding network traffic

MODULES=	cpan
DISTNAME=	NetPacket-0.04
REVISION=	3
CATEGORIES=	net
USE_GROFF =	Yes

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	net/p5-Net-Pcap

NO_REGRESS=	Yes

post-install:
	@find ${WRKINST} -name '*.orig' | xargs rm

.include <bsd.port.mk>
