# $OpenBSD: Makefile,v 1.8 2010/11/20 19:56:51 espie Exp $

COMMENT=	Perl/Tk graphical user interface to GNU ispell

DISTNAME=	tkispell-0.18
REVISION=	0
CATEGORIES=	textproc

CPAN_AUTHOR=	RKIES

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes
RUN_DEPENDS=	x11/p5-Tk \
		textproc/ispell

.include <bsd.port.mk>
