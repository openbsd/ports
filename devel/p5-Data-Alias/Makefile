# $OpenBSD: Makefile,v 1.19 2017/07/20 16:25:06 bluhm Exp $

# https://rt.cpan.org/Public/Bug/Display.html?id=118854
BROKEN =	Data::Alias 1.20 broken for Perl 5.24.0 and greater

COMMENT =	comprehensive set of aliasing operations

MODULES =	cpan
DISTNAME =	Data-Alias-1.20
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c perl

.include <bsd.port.mk>
