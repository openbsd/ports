# $OpenBSD: Makefile,v 1.13 2009/11/06 02:18:39 kevlo Exp $

COMMENT=	portable multitasking and networking framework for perl

MODULES=	cpan
DISTNAME=	POE-1.280
CATEGORIES=	devel

HOMEPAGE=	http://poe.perl.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS=	--default

RUN_DEPENDS=	::devel/p5-Curses \
		::devel/p5-IO-Tty \
		::devel/p5-POE-Test-Loops \
		::devel/p5-Term-ReadKey \
		::net/p5-Socket6 \
		::www/p5-libwww

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
