# $OpenBSD: Makefile,v 1.2 2005/12/07 20:09:36 wilfried Exp $

COMMENT=	"POE interface to Net::Pcap"

DISTNAME=	POE-Component-Pcap-0.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POE/} 

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-POE \
		::net/p5-Net-Pcap \
		::net/p5-NetPacket

# regress requires root privileges and a network connection
REGRESS_IS_INTERACTIVE= Yes

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
