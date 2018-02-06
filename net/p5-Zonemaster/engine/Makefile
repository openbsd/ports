# $OpenBSD: Makefile,v 1.7 2018/02/06 21:55:39 sthen Exp $

PKG_ARCH =	*

COMMENT =	tool to check the quality of a DNS zone

MODULES =	cpan
CPAN_AUTHOR =	ZNMSTR
V =		2.0.6
DISTNAME =	Zonemaster-Engine-v$V
PKGNAME =	p5-Zonemaster-engine-$V
CATEGORIES =	net

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	perl

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		converters/p5-JSON>=2.53 \
			converters/p5-JSON-XS \
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
			net/p5-Zonemaster/ldns

TEST_DEPENDS =		converters/p5-JSON-XS>=2.32 \
			devel/p5-Pod-Coverage \
			devel/p5-Test-Fatal \
			textproc/p5-Text-CSV

.include <bsd.port.mk>
