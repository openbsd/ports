# $OpenBSD: Makefile,v 1.3 2004/01/17 15:58:08 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"simple interface to access shared memory"

DISTNAME=	IPC-ShareLite-0.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IPC/}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
