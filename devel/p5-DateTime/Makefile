# $OpenBSD: Makefile,v 1.1.1.1 2006/04/18 19:05:25 espie Exp $

COMMENT=		"perl objected oriented Date Time"

DISTNAME=		DateTime-0.30
PKGNAME=		p5-${DISTNAME}
SHARED_ONLY=		Yes
CATEGORIES=		devel perl5

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DateTime/}

DEPS=			::devel/p5-DateTime-Locale \
			::devel/p5-DateTime-TimeZone

RUN_DEPENDS=		$(DEPS)
REGRESS_DEPENDS=	$(DEPS)


CONFIGURE_STYLE=	perl


.include <bsd.port.mk>	
