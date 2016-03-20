# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:15 naddy Exp $

COMMENT=		Log::Log4perl logging for Catalyst (deprecated)

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Catalyst-Log-Log4perl-1.06
CATEGORIES=		www devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime \
			devel/p5-Log-Log4perl>=1.28 \
			devel/p5-MRO-Compat \
			devel/p5-Params-Validate \
			devel/p5-Sub-Install

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
