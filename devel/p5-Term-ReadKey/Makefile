# $OpenBSD: Makefile,v 1.11 2004/01/17 15:58:08 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=		'change terminal modes, and perform non-blocking reads'

V=			2.21
DISTNAME=		TermReadKey-${V}
PKGNAME=		p5-Term-ReadKey-${V}
CATEGORIES=		devel perl5

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

CONFIGURE_STYLE=	perl
REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
