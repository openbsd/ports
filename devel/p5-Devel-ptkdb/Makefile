# $OpenBSD: Makefile,v 1.4 2006/12/30 16:24:05 aanriot Exp $

COMMENT=	"perl debugger built with a PerlTk GUI"

MODULES=	cpan
DISTNAME=	Devel-ptkdb-1.1091
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=  	devel

HOMEPAGE=	http://world.std.com/~aep/ptkdb/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=AEPAGE

CONFIGURE_ARGS=	INSTALLDIRS="site"

RUN_DEPENDS=	::x11/tk/8.4 \
		::x11/p5-Tk

.include <bsd.port.mk>
