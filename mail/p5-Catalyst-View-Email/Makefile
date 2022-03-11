COMMENT =	send Email from Catalyst

DISTNAME =	Catalyst-View-Email-0.36

CATEGORIES =	mail

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Module-Runtime>=0.014 \
			devel/p5-Moose>=0.93 \
			mail/p5-Email-MIME>=1.859 \
			mail/p5-Email-Sender>=0.100110 \
			security/p5-Authen-SASL>=2.13 \
			www/p5-Catalyst-Runtime>=5.7
TEST_DEPENDS =		devel/p5-Test-Requires \
			textproc/p5-Catalyst-View-TT \
			www/p5-Catalyst-View-Mason

CONFIGURE_STYLE =	modinst

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
