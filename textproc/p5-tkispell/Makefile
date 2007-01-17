# $OpenBSD: Makefile,v 1.2 2007/01/17 15:36:45 ajacoutot Exp $

COMMENT=	"Perl/Tk graphical user interface to GNU ispell"

DISTNAME=	tkispell-0.18
CATEGORIES=	textproc

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

CPAN_AUTHOR=	RKIES

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
RUN_DEPENDS=	:p5-Tk-*:x11/p5-Tk \
		::textproc/ispell

.include <bsd.port.mk>
