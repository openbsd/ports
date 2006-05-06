# $OpenBSD: Makefile,v 1.1.1.1 2006/05/06 19:36:12 msf Exp $

COMMENT=	"database-independent schema objects"

DISTNAME=	DBIx-DBSchema-0.31
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-FreezeThaw

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
