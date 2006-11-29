# $OpenBSD: Makefile,v 1.5 2006/11/29 08:23:30 espie Exp $

COMMENT=	"portable multitasking and networking framework for perl"

MODULES=	cpan
DISTNAME=	POE-0.38
CATEGORIES=	devel

HOMEPAGE=	http://poe.perl.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS=	--default

RUN_DEPENDS=	::www/p5-libwww

.include <bsd.port.mk>
