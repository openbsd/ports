# $OpenBSD: Makefile,v 1.5 2021/08/04 09:45:29 cwen Exp $

COMMENT =	Perl interface for the MusicBrainz libdiscid library
DISTNAME =	MusicBrainz-DiscID-0.06
CATEGORIES =	audio
REVISION =	1

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c discid perl

MODULES =	cpan

LIB_DEPENDS =	audio/libdiscid>=0.2.2

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
