# $OpenBSD: Makefile,v 1.22 2020/03/27 17:31:52 sthen Exp $

COMMENT =	critique Perl source code for best-practices

DISTNAME =	Perl-Critic-1.138

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
MODCPAN_EXAMPLES =	Yes
MAKE_ENV =		TEST_POD=Yes

TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Memory-Cycle

BUILD_DEPENDS =		devel/p5-B-Keywords>=1.05 \
			devel/p5-List-MoreUtils>=0.19

RUN_DEPENDS =		devel/p5-B-Keywords>=1.05 \
			devel/p5-Config-Tiny>=2 \
			devel/p5-Exception-Class>=1.23 \
			devel/p5-IO-String \
			devel/p5-List-MoreUtils>=0.19 \
			devel/p5-Module-Pluggable>=3.1 \
			devel/p5-Readonly>=2 \
			devel/p5-String-Format>=1.18 \
			devel/p5-Task-Weaken \
			devel/perltidy \
			sysutils/p5-File-Which \
			textproc/p5-PPI>=1.265 \
			textproc/p5-PPIx-QuoteLike \
			textproc/p5-PPIx-Regexp>=0.068 \
			textproc/p5-PPIx-Utilities>=1.001 \
			textproc/p5-Pod-Spell>=1

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
