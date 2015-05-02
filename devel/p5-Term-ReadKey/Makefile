# $OpenBSD: Makefile,v 1.27 2015/05/02 16:05:06 jturner Exp $

SHARED_ONLY=		Yes

COMMENT=		change terminal modes, and perform non-blocking reads

MODULES=		cpan
V=			2.30
DISTNAME=		TermReadKey-${V}
PKGNAME=		p5-Term-ReadKey-${V}
REVISION=		7
CATEGORIES=		devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
