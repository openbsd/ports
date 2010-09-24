# $OpenBSD: Makefile,v 1.2 2010/09/24 15:37:42 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION=	0
CATEGORIES =	textproc

WANTLIB +=	stdc++

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
