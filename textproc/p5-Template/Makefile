# $OpenBSD: Makefile,v 1.1 2004/02/16 21:09:22 djm Exp $

COMMENT=		'Template Toolkit'

DISTNAME=		Template-Toolkit-2.13
PKGNAME=		p5-Template-2.13
CATEGORIES=		textproc perl5

MAINTAINER=		Damien Miller <djm@openbsd.org>

# Same as PERL: Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Template/}

RUN_DEPENDS=		:p5-AppConfig-*:devel/p5-AppConfig
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	TT_DBI=n TT_LATEX=n TT_ACCEPT=y \
			TT_DOCS=n TT_EXAMPLES=n TT_EXTRAS=n \
			TT_QUIET=y TT_PREFIX=${PREFIX}/share/tt2

.include <bsd.port.mk>

