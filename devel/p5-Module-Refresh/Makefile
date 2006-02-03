# $OpenBSD: Makefile,v 1.2 2006/02/03 16:29:57 msf Exp $

COMMENT=	"refresh perl %INC files when updated on disk"

DISTNAME=	Module-Refresh-0.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
