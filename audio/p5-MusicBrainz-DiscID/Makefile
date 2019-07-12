# $OpenBSD: Makefile,v 1.2 2019/07/12 20:43:38 sthen Exp $

COMMENT =	Perl interface for the MusicBrainz libdiscid library
DISTNAME =	MusicBrainz-DiscID-0.04
CATEGORIES =	audio

MAINTAINER =	Charlene Wendling <julianaito@posteo.jp>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c discid perl

MODULES =	cpan

LIB_DEPENDS =	audio/libdiscid>=0.2.2

.include <bsd.port.mk>
