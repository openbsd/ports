# $OpenBSD: Makefile,v 1.14 2017/07/26 22:45:31 sthen Exp $

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	6
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl ${COMPILER_LIBCXX}

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
