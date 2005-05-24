# $OpenBSD: Makefile,v 1.1.1.1 2005/05/24 01:37:45 msf Exp $

COMMENT=	'event-based FTP server on a virtual filesystem'

DISTNAME=	POE-Component-Server-FTP-0.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POE/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-IO-stringy \
		::devel/p5-POE \
		::sysutils/p5-Filesys-Virtual

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
