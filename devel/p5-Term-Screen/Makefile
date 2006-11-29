# $OpenBSD: Makefile,v 1.5 2006/11/29 08:23:30 espie Exp $

COMMENT=		"positioning screen based module"

MODULES=		cpan
DISTNAME=		Term-Screen-1.03
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=		TERM=${TERM}

.include <bsd.port.mk>
