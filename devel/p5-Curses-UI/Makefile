# $OpenBSD: Makefile,v 1.1.1.1 2003/05/24 18:05:31 avsm Exp $

COMMENT=	"curses based user interface framework for Perl"

DISTNAME=	Curses-UI-0.74
PKGNAME=	p5-${DISTNAME}

CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Curses/}

BUILD_DEPENDS=	::devel/p5-Curses \
		::devel/p5-Term-ReadKey

# Perl license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
