# $OpenBSD: Makefile,v 1.30 2019/07/12 20:45:02 sthen Exp $

COMMENT=	portable multitasking and networking framework for perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-1.367
REVISION=	0
CATEGORIES=	devel
FIX_EXTRACT_PERMISSIONS=	Yes

HOMEPAGE=	http://poe.perl.org/

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_ARGS=	--default

BUILD_DEPENDS=	devel/p5-POE-Test-Loops>=1.360
RUN_DEPENDS=	devel/p5-Curses>=1.08 \
		devel/p5-IO-Pipely>=0.005 \
		devel/p5-IO-Tty>=1.08 \
		devel/p5-POE-Test-Loops>=1.360 \
		net/p5-Socket6>=0.23 \
		www/p5-URI>=1.74 \
		www/p5-libwww>=5.79
TEST_DEPENDS=	devel/p5-Term-Size \
		devel/p5-YAML \
		net/p5-Socket-GetAddrInfo

MAKE_ENV=	TEST_POD=Yes
TEST_ENV=	RELEASE_TESTING=1

MODCPAN_EXAMPLES=	Yes

post-build:
	# XXX prevent gen-tests from running again during fake
	touch ${WRKDIST}/lib/POE.pm

.include <bsd.port.mk>
