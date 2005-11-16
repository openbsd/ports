# $OpenBSD: Makefile,v 1.2 2005/11/16 12:50:36 msf Exp $

COMMENT=	"simplistic perl interface to pkg-config"

DISTNAME=	ExtUtils-PkgConfig-1.07
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=ExtUtils/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/pkgconfig

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
