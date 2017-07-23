# $OpenBSD: Makefile,v 1.13 2017/07/23 09:26:29 espie Exp $

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	5
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl ${COMPILER_LIBCXX}

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
