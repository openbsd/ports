# $OpenBSD: Makefile,v 1.5 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	2
CATEGORIES =	textproc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c stdc++

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
