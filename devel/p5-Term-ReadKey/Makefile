# $OpenBSD: Makefile,v 1.14 2005/10/31 14:47:32 alek Exp $

SHARED_ONLY=		Yes

COMMENT=		'change terminal modes, and perform non-blocking reads'

V=			2.30
DISTNAME=		TermReadKey-${V}
PKGNAME=		p5-Term-ReadKey-${V}p0
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
