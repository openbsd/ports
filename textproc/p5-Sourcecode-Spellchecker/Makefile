# $OpenBSD: Makefile,v 1.3 2019/04/24 16:26:58 sthen Exp $

COMMENT =	perl module for spell-checking source code

DISTNAME =	Sourcecode-Spellchecker-0.03
REVISION =	0

CATEGORIES =	textproc devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

CPAN_AUTHOR =		ZBLAIR

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/script/spellcheck_source.pl \
		${PREFIX}/bin/

.include <bsd.port.mk>
