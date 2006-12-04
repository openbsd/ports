# $OpenBSD: Makefile,v 1.4 2006/12/04 12:38:19 msf Exp $

SHARED_ONLY=	Yes

COMMENT= 	"checks if the documentation of a Perl module is comprehensive"

MODULES=	cpan
DISTNAME=	Pod-Coverage-0.18
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
