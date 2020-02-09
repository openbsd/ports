# $OpenBSD: Makefile,v 1.3 2020/02/09 19:53:32 cwen Exp $

COMMENT =	Perl interface for the MusicBrainz libdiscid library
DISTNAME =	MusicBrainz-DiscID-0.06
CATEGORIES =	audio

MAINTAINER =	Charlene Wendling <cwen@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c discid perl

MODULES =	cpan

LIB_DEPENDS =	audio/libdiscid>=0.2.2

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
