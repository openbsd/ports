# $OpenBSD: Makefile,v 1.4 2006/02/01 16:43:46 msf Exp $

COMMENT=	"subversion activity notification"

DISTNAME=	SVN-Notify-2.51
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/D/DW/DWHEELER/}

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/subversion,-perl \
		::www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS= ::devel/p5-Test-Pod-Coverage \
		 ::devel/p5-Test-Pod

CONFIGURE_STYLE= perl modbuild

.include <bsd.port.mk>
