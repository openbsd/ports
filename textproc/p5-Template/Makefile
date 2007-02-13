# $OpenBSD: Makefile,v 1.4 2007/02/13 23:47:26 bernd Exp $

SHARED_ONLY=		Yes

COMMENT=		'template processing system'

MODULES=		cpan
VERSION=		2.14
DISTNAME=		Template-Toolkit-${VERSION}
PKGNAME=		p5-Template-${VERSION}p1
CATEGORIES=		textproc

HOMEPAGE=		http://www.template-toolkit.org/

MAINTAINER=		Damien Miller <djm@openbsd.org>

# Same as PERL: Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-AppConfig-*:devel/p5-AppConfig
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_ARGS+=	TT_DBI=n TT_LATEX=n TT_ACCEPT=y \
			TT_DOCS=n TT_EXAMPLES=n TT_EXTRAS=n \
			TT_QUIET=y TT_PREFIX=${PREFIX}/share/tt2

.include <bsd.port.mk>
