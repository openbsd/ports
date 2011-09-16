# $OpenBSD: Makefile,v 1.10 2011/09/16 11:41:41 espie Exp $

COMMENT=	Perl/Tk graphical user interface to GNU ispell

DISTNAME=	tkispell-0.18
REVISION=	2
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
