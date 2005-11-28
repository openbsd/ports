# $OpenBSD: Makefile,v 1.4 2005/11/28 21:10:31 steven Exp $

COMMENT=		"positioning screen based module"

DISTNAME=		Term-Screen-1.03
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

PKG_ARCH=		*

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

CONFIGURE_STYLE=	perl

REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=		TERM=${TERM}

.include <bsd.port.mk>
