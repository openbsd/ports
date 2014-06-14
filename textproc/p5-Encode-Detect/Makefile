# $OpenBSD: Makefile,v 1.7 2014/06/14 23:26:01 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	3
CATEGORIES =	textproc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c stdc++

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
