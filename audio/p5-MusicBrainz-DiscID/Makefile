# $OpenBSD: Makefile,v 1.1.1.1 2018/08/29 21:18:39 bcallah Exp $

COMMENT =	Perl interface for the MusicBrainz libdiscid library
DISTNAME =	MusicBrainz-DiscID-0.04
CATEGORIES =	audio

MAINTAINER =	Charlene Wendling <julianaito@posteo.jp>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c discid perl

MODULES =	cpan

LIB_DEPENDS =	audio/libdiscid>=0.2.2

.include <bsd.port.mk>
