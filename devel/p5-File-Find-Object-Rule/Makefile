# $OpenBSD: Makefile,v 1.6 2018/05/30 12:55:00 bluhm Exp $

COMMENT =	alternative interface to File::Find::Object

DISTNAME =	File-Find-Object-Rule-0.0307

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Module-Build>=0.28
RUN_DEPENDS =		devel/p5-Class-XSAccessor \
			devel/p5-File-Find-Object \
			devel/p5-Number-Compare \
			textproc/p5-Text-Glob

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
