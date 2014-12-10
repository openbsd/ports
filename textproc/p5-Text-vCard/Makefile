# $OpenBSD: Makefile,v 1.1.1.1 2014/12/10 21:51:09 landry Exp $

COMMENT =	read, write, and edit vCard address books

MODULES =	cpan
DISTNAME =	Text-vCard-3.06
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/p5-URI \
		devel/p5-Moo \
		devel/p5-Path-Tiny \
		devel/p5-Text-vFile-asData \
		converters/p5-Unicode-LineBreak
TEST_DEPENDS =	devel/p5-Test-Most \
		devel/p5-Directory-Scratch

.include <bsd.port.mk>
