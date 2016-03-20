# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:56 naddy Exp $

COMMENT =		ospf link-state database viewer

DISTNAME =		OSPF-LSDB-1.07

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# bsd
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		devel/p5-Data-Validate \
			devel/p5-Data-Validate-Struct \
			devel/p5-File-Slurp \
			devel/p5-List-MoreUtils \
			textproc/p5-Regexp-Common \
			devel/p5-Regexp-IPv6 \
			devel/p5-YAML-Syck
TEST_DEPENDS =	devel/p5-Test-NoWarnings \
			devel/p5-Test-Pod \
			devel/p5-Test-Strict

.include <bsd.port.mk>
