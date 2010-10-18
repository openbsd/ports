# $OpenBSD: Makefile,v 1.9 2010/10/18 17:48:07 espie Exp $

COMMENT=		positioning screen based module

MODULES=		cpan
DISTNAME=		Term-Screen-1.03
REVISION=		0
CATEGORIES=		devel
USE_GROFF =	Yes

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=		TERM=${TERM}

.include <bsd.port.mk>
