# $OpenBSD: Makefile,v 1.24 2013/03/11 10:50:22 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		change terminal modes, and perform non-blocking reads

MODULES=		cpan
V=			2.30
DISTNAME=		TermReadKey-${V}
PKGNAME=		p5-Term-ReadKey-${V}
REVISION=		5
CATEGORIES=		devel
USE_GROFF =		Yes

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
