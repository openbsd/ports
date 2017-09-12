# $OpenBSD: Makefile,v 1.4 2017/09/12 12:29:48 bluhm Exp $

COMMENT =	object oriented File::Find replacement

VERSION =	0.3.2
DISTNAME =	File-Find-Object-v${VERSION}
PKGNAME =	p5-File-Find-Object-${VERSION}

CATEGORIES =	devel

CPAN_AUTHOR =		SHLOMIF

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Class-XSAccessor

PKG_ARCH =		*

# v0.3.2 tar ball contains emacs backup files, they make review harder, remove
post-extract:
	find ${WRKDIST} -name '*~' | xargs rm --

.include <bsd.port.mk>
