# $OpenBSD: Makefile,v 1.4 2006/07/17 12:13:21 steven Exp $

COMMENT=	"interface for providing metadata about installed packages"

DISTNAME=	App-Info-0.49
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=App/}

CONFIGURE_STYLE= perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
