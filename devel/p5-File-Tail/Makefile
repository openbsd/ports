# $OpenBSD: Makefile,v 1.14 2002/07/10 20:48:13 avsm Exp $

COMMENT=	"library for reading from continuously updated files"

DISTNAME=	File-Tail-0.98
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

BUILD_DEPENDS=	:p5-Time-HiRes->=1.12:devel/p5-Time-HiRes
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
