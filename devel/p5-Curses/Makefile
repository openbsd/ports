# $OpenBSD: Makefile,v 1.6 2002/05/13 18:50:40 espie Exp $

COMMENT=	"terminal screen handling and optimisation"

DISTNAME=	Curses-1.06
PKGNAME=	p5-${DISTNAME}

CATEGORIES=	devel perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Curses/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	PANELS MENUS FORMS

.include <bsd.port.mk>
