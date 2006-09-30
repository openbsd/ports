# $OpenBSD: Makefile,v 1.3 2006/09/30 11:44:30 kevlo Exp $

COMMENT=	"select a pager if destination is a TTY"

DISTNAME=	IO-Pager-0.06
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}
EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
