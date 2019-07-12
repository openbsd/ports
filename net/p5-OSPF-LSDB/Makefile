# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:41 sthen Exp $

COMMENT =		ospf link-state database viewer

DISTNAME =		OSPF-LSDB-1.11

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# bsd
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		devel/p5-Data-Validate \
			devel/p5-Data-Validate-Struct \
			devel/p5-File-Slurp \
			devel/p5-List-MoreUtils \
			devel/p5-Regexp-IPv6 \
			devel/p5-YAML-Syck \
			textproc/p5-Regexp-Common \
			www/p5-CGI
TEST_DEPENDS =		devel/p5-Test-NoWarnings \
			devel/p5-Test-Pod \
			devel/p5-Test-Strict \
			math/graphviz

.include <bsd.port.mk>
