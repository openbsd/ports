# $OpenBSD: Makefile,v 1.6 2007/04/12 18:59:36 jasper Exp $

COMMENT=		"positioning screen based module"

MODULES=		cpan
DISTNAME=		Term-Screen-1.03
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=		TERM=${TERM}

.include <bsd.port.mk>
