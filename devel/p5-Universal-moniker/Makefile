# $OpenBSD: Makefile,v 1.3 2006/11/29 08:23:31 espie Exp $

COMMENT=	"Perl module for aliasing class names"

MODULES=	cpan
DISTNAME=	UNIVERSAL-moniker-0.08
PKGNAME=	p5-Universal-moniker-0.08
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Lingua-EN-Inflect

.include <bsd.port.mk>
