# $OpenBSD: Makefile,v 1.3 2012/08/17 01:50:18 bluhm Exp $

COMMENT =		ospf link-state database viewer

DISTNAME =		OSPF-LSDB-1.04

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# bsd
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Data-Validate \
			devel/p5-Data-Validate-Struct \
			devel/p5-File-Slurp \
			devel/p5-List-MoreUtils \
			textproc/p5-Regexp-Common \
			devel/p5-Regexp-IPv6 \
			devel/p5-YAML-Syck
REGRESS_DEPENDS =	devel/p5-Test-NoWarnings \
			devel/p5-Test-Pod \
			devel/p5-Test-Strict

.include <bsd.port.mk>
