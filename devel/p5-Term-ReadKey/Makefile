# $OpenBSD: Makefile,v 1.8 2002/05/14 08:41:55 wilfried Exp $

COMMENT=		'change terminal modes, and perform non-blocking reads'

V=			2.19
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
