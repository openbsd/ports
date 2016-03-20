# $OpenBSD: Makefile,v 1.29 2016/03/20 19:56:35 naddy Exp $

COMMENT=		change terminal modes, and perform non-blocking reads

MODULES=		cpan
V=			2.30
DISTNAME=		TermReadKey-${V}
PKGNAME=		p5-Term-ReadKey-${V}
REVISION=		8
CATEGORIES=		devel

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
