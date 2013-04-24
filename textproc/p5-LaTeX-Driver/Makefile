# $OpenBSD: Makefile,v 1.3 2013/04/24 07:58:12 sthen Exp $

COMMENT=		driver to format LaTeX documents

DISTNAME=		LaTeX-Driver-0.12
CATEGORIES=		textproc

MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ENV+=		PREFIX=${PREFIX}

RUN_DEPENDS=		print/texlive/base \
			devel/p5-Class-Accessor \
			devel/p5-Exception-Class \
			devel/p5-File-Slurp \
			devel/p5-Readonly

TEST_DEPENDS=		print/texlive/texmf,-full \
			devel/p5-Test-Exception

.include <bsd.port.mk>
