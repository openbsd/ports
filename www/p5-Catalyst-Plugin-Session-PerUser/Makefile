# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:58 sthen Exp $

COMMENT=	per-user session for catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-Session-PerUser-0.05
CATEGORIES=	www
REVISION=	0

# Artistic + GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Hash-Merge \
		devel/p5-Moose \
		devel/p5-MRO-Compat \
		devel/p5-Object-Signature \
		devel/p5-namespace-autoclean \
		security/p5-Catalyst-Plugin-Authentication \
		www/p5-Catalyst-Plugin-Session

TEST_DEPENDS=	devel/p5-Test-WWW-Mechanize-Catalyst \
		www/p5-Catalyst-Plugin-Session-State-Cookie

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
