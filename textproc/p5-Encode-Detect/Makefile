# $OpenBSD: Makefile,v 1.12 2017/07/16 19:19:03 espie Exp $

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	4
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl ${COMPILER_LIBCXX}

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
