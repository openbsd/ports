# $OpenBSD: Makefile,v 1.2 2002/10/30 00:07:40 pvalchev Exp $

IGNORE=		"comes with ${OPSYS} as of release 3.3"

COMMENT=	"framework for localization and inheritance-based lexicons"

DISTNAME=		Locale-Maketext-1.03
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Locale/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::misc/p5-I18N-LangTags

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
