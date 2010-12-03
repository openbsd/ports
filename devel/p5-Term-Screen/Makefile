# $OpenBSD: Makefile,v 1.11 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT=		positioning screen based module

MODULES=		cpan
DISTNAME=		Term-Screen-1.03
REVISION=		1
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=		TERM=${TERM}

.include <bsd.port.mk>
