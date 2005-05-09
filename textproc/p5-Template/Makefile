# $OpenBSD: Makefile,v 1.2 2005/05/09 12:03:37 djm Exp $

COMMENT=		'template processing system'

DISTNAME=		Template-Toolkit-2.14
PKGNAME=		${DISTNAME:S/^Template-Toolkit-/p5-Template-/}
CATEGORIES=		textproc perl5

HOMEPAGE=		http://www.template-toolkit.org/

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

