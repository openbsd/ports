# $OpenBSD: Makefile,v 1.15 2018/10/24 14:28:11 sthen Exp $

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	7
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
