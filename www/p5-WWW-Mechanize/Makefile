# $OpenBSD: Makefile,v 1.1.1.1 2005/04/01 19:57:26 msf Exp $

COMMENT= 	"handy web browsing in a Perl object"

DISTNAME=	WWW-Mechanize-1.12
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=WWW/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-libwww->=5.78:www/p5-libwww

REGRESS_DEPENDS= ::devel/p5-Test-Memory-Cycle \
		 ::devel/p5-Test-Pod \
		 ::devel/p5-Test-Pod-Coverage \
		 ::devel/p5-Test-Taint \
		 ::devel/p5-Test-Warn

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	 --nolive

PKG_ARCH= *

.include <bsd.port.mk>
