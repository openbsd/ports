# $OpenBSD: Makefile,v 1.13 2010/10/19 08:02:54 espie Exp $

COMMENT=	drop-in object-oriented CGI.pm replacement

MODULES=	cpan
DISTNAME=	CGI-Simple-1.112
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild
RUN_DEPENDS=		::devel/p5-IO-stringy
REGRESS_DEPENDS=	::www/p5-libwww

.include <bsd.port.mk>
