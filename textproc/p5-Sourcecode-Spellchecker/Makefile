# $OpenBSD: Makefile,v 1.2 2016/03/20 19:57:08 naddy Exp $

COMMENT =	perl module for spell-checking source code

DISTNAME =	Sourcecode-Spellchecker-0.03

CATEGORIES =	textproc devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

CPAN_AUTHOR =		ZBLAIR

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/script/spellcheck_source.pl \
		${PREFIX}/bin/

.include <bsd.port.mk>
