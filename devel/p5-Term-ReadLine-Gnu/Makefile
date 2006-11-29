# $OpenBSD: Makefile,v 1.16 2006/11/29 08:23:30 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		'GNU Readline Library Wrapper Module'

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.16
CATEGORIES=		devel

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		readline termcap

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
