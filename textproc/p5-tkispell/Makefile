# $OpenBSD: Makefile,v 1.3 2007/05/23 06:28:03 ajacoutot Exp $

COMMENT=	"Perl/Tk graphical user interface to GNU ispell"

DISTNAME=	tkispell-0.18
PKGNAME=	${DISTNAME}p0
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
