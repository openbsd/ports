# $OpenBSD: Makefile,v 1.2 2008/01/24 02:06:58 okan Exp $

COMMENT=	text-to-HTML filter

DISTNAME=	Text-Markdown-1.0.5
CATEGORIES=	textproc www
MODULES=	cpan
CONFIGURE_STYLE=modbuild

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
