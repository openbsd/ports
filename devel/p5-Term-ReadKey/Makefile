# $OpenBSD: Makefile,v 1.26 2014/06/14 23:24:59 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		change terminal modes, and perform non-blocking reads

MODULES=		cpan
V=			2.30
DISTNAME=		TermReadKey-${V}
PKGNAME=		p5-Term-ReadKey-${V}
REVISION=		6
CATEGORIES=		devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
