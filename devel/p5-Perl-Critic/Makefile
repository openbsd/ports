COMMENT =	critique Perl source code for best-practices

# 1.150 needs new dep, PPIx::Utils instead of PPIx::Utilities
DISTNAME =	Perl-Critic-1.148

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-B-Keywords>=1.05 \
			devel/p5-Devel-CheckOS \
			devel/p5-Module-Build>=0.4204 \
			devel/p5-Test-Deep \
			textproc/p5-List-SomeUtils

RUN_DEPENDS =		devel/p5-B-Keywords>=1.05 \
			devel/p5-Config-Tiny>=2 \
			devel/p5-Exception-Class>=1.23 \
			devel/p5-IO-String \
			devel/p5-Module-Pluggable>=3.1 \
			devel/p5-Readonly>=2 \
			devel/p5-String-Format>=1.18 \
			devel/p5-Task-Weaken \
			devel/perltidy \
			sysutils/p5-File-Which \
			textproc/p5-List-SomeUtils \
			textproc/p5-PPI>=1.265 \
			textproc/p5-PPIx-QuoteLike \
			textproc/p5-PPIx-Regexp>=0.068 \
			textproc/p5-PPIx-Utilities>=1.001 \
			textproc/p5-Pod-Parser \
			textproc/p5-Pod-Spell>=1
TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Memory-Cycle

MAKE_ENV =		TEST_POD=Yes

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
