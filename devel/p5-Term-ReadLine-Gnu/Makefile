# $OpenBSD: Makefile,v 1.15 2006/10/19 07:27:34 wilfried Exp $

SHARED_ONLY=		Yes

COMMENT=		'GNU Readline Library Wrapper Module'

DISTNAME=		Term-ReadLine-Gnu-1.16
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		readline termcap

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

CONFIGURE_STYLE=	perl

# This regression test wants an X11 display
REGRESS_DEPENDS=	:p5-Tk-*:x11/p5-Tk
REGRESS_FLAGS+=		TERM=${TERM} DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}
REGRESS_IS_INTERACTIVE=	Yes

pre-regress:
.for t in TERM DISPLAY XAUTHORITY
.if !defined($t)
	@echo "$t needs to be set to run regress"; exit 1
.endif
.endfor

.include <bsd.port.mk>
