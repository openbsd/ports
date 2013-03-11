# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:43 espie Exp $

COMMENT=		driver to format LaTeX documents

DISTNAME=		LaTeX-Driver-0.10
CATEGORIES=		textproc

MODULES=		cpan

# MIT
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ENV+= PREFIX=${PREFIX}

RUN_DEPENDS=	print/texlive/base \
                devel/p5-Class-Accessor \
                devel/p5-Exception-Class \
		devel/p5-File-Slurp

TEST_DEPENDS= print/texlive/texmf,-full \
		devel/p5-Test-Exception

.include <bsd.port.mk>
