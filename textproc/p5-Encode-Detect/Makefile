# $OpenBSD: Makefile,v 1.11 2017/04/10 11:46:34 sthen Exp $

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	4
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl ${LIBCXX}

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
