# $OpenBSD: Makefile,v 1.20 2020/07/03 21:44:53 sthen Exp $

COMMENT=		retrieve home directory location

MODULES=		cpan
PKG_ARCH=		*

DISTNAME=		File-HomeDir-1.004
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		sysutils/p5-File-Which>=0.05

# t/20_empty_home.t fails under PORTS_PRIVSEP if the directory
# '/nonexistent' doesn't exist as File::HomeDir->my_home checks
# if it does before considering a home directory valid.

# Needed by t/02_main.t
TEST_ENV+=		HOME="${HOME}"

.include <bsd.port.mk>
