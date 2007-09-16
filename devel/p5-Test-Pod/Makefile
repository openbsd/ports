# $OpenBSD: Makefile,v 1.8 2007/09/16 02:53:09 merdely Exp $

COMMENT= 	check for POD errors in files

MODULES=	cpan
DISTNAME=	Test-Pod-1.26
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Pod-Simple

.include <bsd.port.mk>
