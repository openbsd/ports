# $OpenBSD: Makefile,v 1.1.1.1 2006/10/29 17:42:53 ajacoutot Exp $

COMMENT=	"Perl/Tk graphical user interface to GNU ispell"

DISTNAME=	tkispell-0.18
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tk/}

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Tk-*:x11/p5-Tk \
		::textproc/ispell

PKG_ARCH=*
CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
