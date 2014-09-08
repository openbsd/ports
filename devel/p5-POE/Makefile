# $OpenBSD: Makefile,v 1.23 2014/09/08 17:04:51 jasper Exp $

COMMENT=	portable multitasking and networking framework for perl

MODULES=	cpan
DISTNAME=	POE-1.294
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

HOMEPAGE=	http://poe.perl.org/

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS=	--default

RUN_DEPENDS=	devel/p5-Curses \
		devel/p5-IO-Tty \
		devel/p5-POE-Test-Loops>=1.036 \
		devel/p5-Term-ReadKey \
		net/p5-Socket6 \
		www/p5-libwww

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes

post-build:
	# XXX prevent gen-tests from running again during fake
	touch ${WRKDIST}/lib/POE.pm
.include <bsd.port.mk>
