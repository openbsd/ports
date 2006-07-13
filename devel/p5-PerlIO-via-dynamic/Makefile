# $OpenBSD: Makefile,v 1.2 2006/07/13 16:14:17 steven Exp $

COMMENT=	"create dynamic PerlIO layers"

DISTNAME=	PerlIO-via-dynamic-0.12
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PerlIO/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
