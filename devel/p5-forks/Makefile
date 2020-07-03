# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:20 sthen Exp $

COMMENT =		forks - emulate threads with fork

DISTNAME =		forks-0.36
REVISION =		2

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Acme-Damn \
			devel/p5-Devel-Symdump \
			devel/p5-List-MoreUtils>=0.15 \
			devel/p5-Sys-SigAction>=0.11

CPAN_AUTHOR =		RYBSKEJ

CONFIGURE_ENV =		FORKS_SIMULATE_USEITHREADS=1

#FAKE_ENV =		UNINST=1

.include <bsd.port.mk>
