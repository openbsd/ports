COMMENT=	portable multitasking and networking framework for perl

DISTNAME =	POE-1.370

CATEGORIES =	devel

HOMEPAGE =	http://poe.perl.org/

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-POE-Test-Loops>=1.360
RUN_DEPENDS =		devel/p5-Curses>=1.08 \
			devel/p5-IO-Pipely>=0.005 \
			devel/p5-IO-Tty>=1.08 \
			devel/p5-POE-Test-Loops>=1.360 \
			net/p5-Socket6>=0.23 \
			www/p5-URI>=1.74 \
			www/p5-libwww>=5.79
TEST_DEPENDS =		devel/p5-Term-Size \
			devel/p5-YAML \
			net/p5-Socket-GetAddrInfo \
			www/p5-HTTP-Message

MAKE_ENV =		TEST_POD=Yes
TEST_ENV =		RELEASE_TESTING=1

CONFIGURE_ARGS =	--default

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes

post-build:
	# XXX prevent gen-tests from running again during fake
	touch ${WRKDIST}/lib/POE.pm

.include <bsd.port.mk>
