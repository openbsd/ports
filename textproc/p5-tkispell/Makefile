# $OpenBSD: Makefile,v 1.6 2010/07/13 20:14:23 sthen Exp $

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
RUN_DEPENDS=	:p5-Tk-*:x11/p5-Tk \
		::textproc/ispell

.include <bsd.port.mk>
