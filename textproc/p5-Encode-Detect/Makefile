# $OpenBSD: Makefile,v 1.3 2010/10/19 07:54:22 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION=	0
CATEGORIES =	textproc
USE_GROFF =	Yes

WANTLIB +=	stdc++

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
