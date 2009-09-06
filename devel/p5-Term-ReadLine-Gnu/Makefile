# $OpenBSD: Makefile,v 1.20 2009/09/06 10:46:25 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.16
PKGNAME=		p5-${DISTNAME}p0
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
