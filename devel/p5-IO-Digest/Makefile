# $OpenBSD: Makefile,v 1.2 2006/09/30 11:44:30 kevlo Exp $

COMMENT=	"module for computing digests while reading or writing"

DISTNAME=	IO-Digest-0.10
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

BUILD_DEPENDS=	:p5-PerlIO-via-dynamic->=0.11:devel/p5-PerlIO-via-dynamic
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
