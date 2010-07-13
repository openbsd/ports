# $OpenBSD: Makefile,v 1.21 2010/07/13 19:46:13 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.16
REVISION=		0
CATEGORIES=		devel

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		readline termcap

REGRESS_DEPENDS=	:p5-Tk-*:x11/p5-Tk
REGRESS_FLAGS=		TERM=${TERM}
REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
