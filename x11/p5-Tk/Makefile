# $OpenBSD: Makefile,v 1.1.1.1 2001/03/08 20:04:26 naddy Exp $

VERSION=		800.022
DISTNAME=		Tk${VERSION}
PKGNAME=		p5-Tk-${VERSION}
CATEGORIES=		x11 devel perl5
NEED_VERSION=		1.358

MAINTAINER=		Shell Hung <i@shellhung.org>

MASTER_SITES=		${MASTER_SITE_PERL_CPAN} \
			ftp://ftp.shellhung.org/pub/CPAN/modules/by-module/
MASTER_SITE_SUBDIR=	Tk

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
