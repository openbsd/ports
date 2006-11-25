# $OpenBSD: Makefile,v 1.3 2006/11/25 16:32:35 espie Exp $

COMMENT=	"perl debugger built with a PerlTk GUI"

MODULES=	cpan
DISTNAME=	Devel-ptkdb-1.1091
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=  	devel

HOMEPAGE=	http://world.std.com/~aep/ptkdb/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

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
