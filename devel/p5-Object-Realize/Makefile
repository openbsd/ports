# $OpenBSD: Makefile,v 1.1.1.1 2002/07/11 09:25:59 shell Exp $

COMMENT=	"perl module to implementing delay loading of object-data"

VERSION=	0.08
DISTNAME=	Object-Realize-Later-${VERSION}
PKGNAME=	p5-Object-Realize-${VERSION}
CATEGORIES=	devel perl5

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Object/}

RUN_DEPENDS+=	:p5-Scalar-Utils-*:devel/p5-Scalar-Utils
BUILD_DEPENDS+=	${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
