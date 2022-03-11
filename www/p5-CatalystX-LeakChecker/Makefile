COMMENT =	debug memory leaks in Catalyst applications

DISTNAME =	CatalystX-LeakChecker-0.06

CATEGORIES =	www

FIX_EXTRACT_PERMISSIONS =	Yes

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Devel-Cycle>=1.11 \
			devel/p5-Moose>=0.90 \
			devel/p5-MooseX-Types \
			devel/p5-PadWalker>=1.8 \
			devel/p5-Task-Weaken \
			devel/p5-namespace-autoclean \
			devel/p5-namespace-clean>=0.05 \
			textproc/p5-Text-SimpleTable \
			www/p5-Catalyst-Runtime>=5.8

PKG_ARCH =		*

.include <bsd.port.mk>
