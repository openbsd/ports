# $OpenBSD: Makefile,v 1.17 2015/04/12 11:27:03 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		template processing system

MODULES=		cpan
VERSION=		2.26
DISTNAME=		Template-Toolkit-${VERSION}
PKGNAME=		p5-Template-${VERSION}
CATEGORIES=		textproc

HOMEPAGE=		http://www.template-toolkit.org/

# Same as Perl: Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=		devel/p5-AppConfig
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_ARGS+=	TT_DBI=n TT_LATEX=n TT_ACCEPT=y \
			TT_DOCS=n TT_EXAMPLES=n TT_EXTRAS=n \
			TT_QUIET=y TT_PREFIX=${PREFIX}/share/tt2

.include <bsd.port.mk>
