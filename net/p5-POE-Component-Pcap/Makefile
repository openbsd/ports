# $OpenBSD: Makefile,v 1.1.1.1 2005/05/24 06:28:19 msf Exp $

COMMENT=	"POE interface to Net::Pcap"

DISTNAME=	POE-Component-Pcap-0.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POE/} 

BUILD_DEPENDS=	::net/p5-Net-Pcap \
		::net/p5-NetPacket
RUN_DEPENDS=	${BUILD_DEPENDS}

# regress requires root privileges and a network connection
REGRESS_IS_INTERACTIVE= Yes

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
