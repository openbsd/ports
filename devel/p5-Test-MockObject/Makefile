# $OpenBSD: Makefile,v 1.5 2006/11/29 08:23:30 espie Exp $

COMMENT= 	"perl extension for emulating troublesome interfaces"

MODULES=	cpan
DISTNAME=	Test-MockObject-1.07
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-Universal-isa \
			::devel/p5-Universal-can

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
