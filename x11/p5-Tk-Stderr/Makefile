# $OpenBSD: Makefile,v 1.5 2011/09/16 12:29:16 espie Exp $

COMMENT=	capture standard error output, display in separate window

DISTNAME=	Tk-Stderr-1.2
PKGNAME=	p5-${DISTNAME}
REVISION=	0
CATEGORIES=	x11 devel perl5

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tk/}

RUN_DEPENDS=	x11/p5-Tk

CONFIGURE_STYLE= perl
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
