# $OpenBSD: Makefile,v 1.24 2010/11/15 19:46:06 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.16
REVISION=		1
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		readline termcap

REGRESS_DEPENDS=	x11/p5-Tk
REGRESS_FLAGS=		TERM=${TERM}
REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
