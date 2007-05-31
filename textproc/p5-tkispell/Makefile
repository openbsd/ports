# $OpenBSD: Makefile,v 1.4 2007/05/31 08:13:32 steven Exp $

COMMENT=	"Perl/Tk graphical user interface to GNU ispell"

DISTNAME=	tkispell-0.18
PKGNAME=	p5-${DISTNAME}p0
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
