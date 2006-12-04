# $OpenBSD: Makefile,v 1.5 2006/12/04 11:12:15 msf Exp $

COMMENT=	"converts Perl XS code into C code" 

MODULES=	cpan
DISTNAME=	ExtUtils-ParseXS-2.17
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-ExtUtils-CBuilder

CONFIGURE_ARGS+= INSTALLDIRS= perl

.include <bsd.port.mk>
