# $OpenBSD: Makefile,v 1.6 2006/11/29 08:23:31 espie Exp $

COMMENT= 	"check for POD errors in files"

MODULES=	cpan
DISTNAME=	Test-Pod-1.24
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
