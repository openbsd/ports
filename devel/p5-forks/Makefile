# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:15 sthen Exp $

COMMENT =		forks - emulate threads with fork

DISTNAME =		forks-0.36
REVISION =		0

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

.include <bsd.port.mk>
