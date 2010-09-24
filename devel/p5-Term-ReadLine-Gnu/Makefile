# $OpenBSD: Makefile,v 1.22 2010/09/24 15:29:22 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.16
REVISION=		1
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
