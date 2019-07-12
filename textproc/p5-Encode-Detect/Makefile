# $OpenBSD: Makefile,v 1.16 2019/07/12 20:50:02 sthen Exp $

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	7
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
