# $OpenBSD: Makefile,v 1.4 2004/10/26 08:37:28 xsa Exp $

COMMENT=		"module to interact with a Cisco router"

DISTNAME=		Net-Telnet-Cisco-1.10
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net perl5

HOMEPAGE=		http://nettelnetcisco.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Net/}

# Artistic
PERMIT_PACKAGE_CDROM=	Yes	
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

RUN_DEPENDS=		:p5-Net-Telnet->=3.02:net/p5-Net-Telnet \
			:p5-Term-ReadKey->=2.14:devel/p5-Term-ReadKey

BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
