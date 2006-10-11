# $OpenBSD: Makefile,v 1.2 2006/10/11 05:39:59 msf Exp $

COMMENT=	"Perl module for encoding/decoding network traffic"

DISTNAME=	NetPacket-0.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=NetPacket/} 

BUILD_DEPENDS=	::net/p5-Net-Pcap

CONFIGURE_STYLE= perl

post-install:
	@find ${WRKINST} -name '*.orig' | xargs rm

.include <bsd.port.mk>
