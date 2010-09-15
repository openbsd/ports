# $OpenBSD: Makefile,v 1.6 2010/09/15 13:52:12 sthen Exp $

COMMENT=	Perl module for encoding/decoding network traffic

MODULES=	cpan
DISTNAME=	NetPacket-0.04
REVISION=	2
CATEGORIES=	net

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
