# $OpenBSD: Makefile,v 1.8 2002/05/13 08:18:19 wilfried Exp $

COMMENT=		'GNU Readline Library Wrapper Module'

DISTNAME=		Term-ReadLine-Gnu-1.12
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
NEED_VERSION=		1.528

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

CONFIGURE_STYLE=	perl

# This regression test wants an X11 display
REGRESS_DEPENDS=	:p5-Tk-*:x11/p5-Tk
REGRESS_FLAGS+=		DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}
REGRESS_IS_INTERACTIVE=	Yes


.include <bsd.port.mk>
