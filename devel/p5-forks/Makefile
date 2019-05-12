# $OpenBSD: Makefile,v 1.1.1.1 2019/05/12 22:25:45 kn Exp $

COMMENT =		forks - emulate threads with fork

DISTNAME =		forks-0.36

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Acme-Damn \
			devel/p5-Devel-Symdump \
			devel/p5-List-MoreUtils>=0.15 \
			devel/p5-Sys-SigAction>=0.11

CPAN_AUTHOR =		RYBSKEJ

.include <bsd.port.mk>
