# $OpenBSD: Makefile,v 1.4 2020/07/03 21:44:30 sthen Exp $

COMMENT =	Perl interface for the MusicBrainz libdiscid library
DISTNAME =	MusicBrainz-DiscID-0.06
CATEGORIES =	audio
REVISION =	0

MAINTAINER =	Charlene Wendling <cwen@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c discid perl

MODULES =	cpan

LIB_DEPENDS =	audio/libdiscid>=0.2.2

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
