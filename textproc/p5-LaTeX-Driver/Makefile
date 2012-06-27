# $OpenBSD: Makefile,v 1.1.1.1 2012/06/27 08:54:27 sthen Exp $

COMMENT=		driver to format LaTeX documents

DISTNAME=		LaTeX-Driver-0.10
CATEGORIES=		textproc

MODULES=		cpan

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+= PREFIX=${PREFIX}

RUN_DEPENDS=	print/texlive/base \
                devel/p5-Class-Accessor \
                devel/p5-Exception-Class \
		devel/p5-File-Slurp

REGRESS_DEPENDS= print/texlive/texmf,-full \
		devel/p5-Test-Exception

.include <bsd.port.mk>
