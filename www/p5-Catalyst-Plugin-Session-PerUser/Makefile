# $OpenBSD: Makefile,v 1.8 2012/04/08 21:58:42 sthen Exp $

COMMENT=	per-user session for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-PerUser-0.05
CATEGORIES=	www
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Plugin-Session \
		security/p5-Catalyst-Plugin-Authentication \
		devel/p5-Hash-Merge \
		devel/p5-Moose \
		devel/p5-MRO-Compat \
		devel/p5-namespace-autoclean \
		devel/p5-Object-Signature

REGRESS_DEPENDS=devel/p5-Test-WWW-Mechanize-Catalyst

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
