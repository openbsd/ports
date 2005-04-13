# $OpenBSD: Makefile,v 1.1.1.1 2005/04/13 00:21:57 msf Exp $

COMMENT= 	"test suite using WWW::Mechanize"

DISTNAME=	Test-WWW-Mechanize-1.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Test-LongString \
		::www/p5-WWW-Mechanize 

REGRESS_DEPENDS= 	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
