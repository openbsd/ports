# $OpenBSD: Makefile,v 1.4 2008/05/08 22:44:13 espie Exp $

COMMENT=	use familiar style on method naming

MODULES=	cpan
DISTNAME=	capitalization-0.03
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	MIYAGAWA

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump

.include <bsd.port.mk>
