# $OpenBSD: Makefile,v 1.1.1.1 2006/06/26 09:37:40 bernd Exp $

COMMENT=	"parse and format strp and strf time patterns"

DISTNAME=	DateTime-Format-Strptime-1.0700
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DateTime/}

RUN_DEPENDS=		::devel/p5-DateTime \
			::devel/p5-DateTime-Locale \
			::devel/p5-DateTime-TimeZone \
			::devel/p5-Params-Validate

BUILD_DEPENDS=		${RUN_DEPENDS}
REGRESS_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	perl
PKG_ARCH=		*

.include <bsd.port.mk>
