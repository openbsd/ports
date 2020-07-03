# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:39 sthen Exp $

PKG_ARCH =	*

COMMENT =	tool to check the quality of a DNS zone

MODULES =	cpan
CPAN_AUTHOR =	ZNMSTR
V =		2.0.7
DISTNAME =	Zonemaster-Engine-v$V
PKGNAME =	p5-Zonemaster-engine-$V
CATEGORIES =	net
REVISION =	0

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE = Yes

WANTLIB =	perl

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		converters/p5-JSON>=2.53 \
			converters/p5-JSON-XS>=2.32 \
			devel/p5-File-ShareDir>=1.00 \
			devel/p5-File-Slurp \
			devel/p5-Hash-Merge \
			devel/p5-libintl \
			devel/p5-List-MoreUtils \
			devel/p5-Module-Find>=0.10 \
			devel/p5-Moose>=2.0401 \
			devel/p5-Readonly \
			mail/p5-Mail-RFC822-Address \
			net/p5-IO-Socket-INET6>=2.69 \
			net/p5-Net-IP \
			net/p5-Zonemaster/ldns \
			textproc/p5-Text-CSV

TEST_DEPENDS =		devel/p5-Pod-Coverage \
			devel/p5-Test-Fatal

.include <bsd.port.mk>
