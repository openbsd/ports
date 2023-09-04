COMMENT =	terminal screen handling and optimisation

DISTNAME =	Curses-1.44
FIX_EXTRACT_PERMISSIONS = Yes

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses form menu panel perl

MODULES =		cpan

MAKE_FLAGS =		PASTHRU_DEFINE='-idirafter $${PERL_INC}'

CONFIGURE_ARGS =	PANELS MENUS FORMS

.include <bsd.port.mk>
