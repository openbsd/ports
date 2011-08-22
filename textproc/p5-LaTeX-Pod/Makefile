# $OpenBSD: Makefile,v 1.1.1.1 2011/08/22 07:14:25 jasper Exp $

COMMENT=		transform LaTeX source files to POD

DISTNAME=		LaTeX-Pod-0.21
CATEGORIES=		textproc

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		textproc/p5-LaTeX-TOM \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Validate \
			devel/p5-boolean

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
