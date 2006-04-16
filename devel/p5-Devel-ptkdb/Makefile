# $OpenBSD: Makefile,v 1.2 2006/04/16 09:02:17 steven Exp $

COMMENT=	"perl debugger built with a PerlTk GUI"

DISTNAME=	Devel-ptkdb-1.1091
PKGNAME=	p5-${DISTNAME}
CATEGORIES=  	devel perl5

HOMEPAGE=	http://world.std.com/~aep/ptkdb/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# GPL / Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/A/AE/AEPAGE/}

CONFIGURE_STYLE=perl
CONFIGURE_ARGS=	INSTALLDIRS="site"

RUN_DEPENDS=	::x11/tk/8.4 \
		::x11/p5-Tk
REGRESS_DEPENDS=::x11/p5-Tk

.include <bsd.port.mk>
