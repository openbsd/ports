# $OpenBSD: Makefile,v 1.21 2002/11/27 06:50:49 pvalchev Exp $

IGNORE=		"comes with ${OPSYS} as of release 3.3"

COMMENT=	"Base64 and Quoted-Printable encodings"

DISTNAME=	MIME-Base64-2.12
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MIME/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
