# $OpenBSD: Makefile,v 1.1.1.1 2016/01/19 14:01:11 dcoppa Exp $

COMMENT =	perl module for spell-checking source code

DISTNAME =	Sourcecode-Spellchecker-0.03

CATEGORIES =	textproc devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

CPAN_AUTHOR =		ZBLAIR

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/script/spellcheck_source.pl \
		${PREFIX}/bin/

.include <bsd.port.mk>
