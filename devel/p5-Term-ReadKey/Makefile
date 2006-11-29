# $OpenBSD: Makefile,v 1.15 2006/11/29 08:23:30 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		'change terminal modes, and perform non-blocking reads'

MODULES=		cpan
V=			2.30
DISTNAME=		TermReadKey-${V}
PKGNAME=		p5-Term-ReadKey-${V}p0
CATEGORIES=		devel

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
