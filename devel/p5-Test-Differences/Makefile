# $OpenBSD: Makefile,v 1.3 2007/09/16 02:53:09 merdely Exp $

COMMENT= 	Test differences in data structures

MODULES=	cpan
DISTNAME=	Test-Differences-0.47
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Text-Diff

.include <bsd.port.mk>
