# $OpenBSD: Makefile,v 1.9 2002/08/09 10:00:24 wilfried Exp $

COMMENT=		'change terminal modes, and perform non-blocking reads'

V=			2.21
DISTNAME=		TermReadKey-${V}
PKGNAME=		p5-Term-ReadKey-${V}
CATEGORIES=		devel perl5
NEED_VERSION=		1.528

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

CONFIGURE_STYLE=	perl
REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
