# $OpenBSD: Makefile,v 1.12 2002/06/07 21:37:11 wilfried Exp $

COMMENT=	"library for reading from continuously updated files"

DISTNAME=	File-Tail-0.98
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

BUILD_DEPENDS=	::devel/p5-Time-HiRes
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
