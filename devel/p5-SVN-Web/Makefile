# $OpenBSD: Makefile,v 1.1.1.1 2004/12/22 01:52:23 msf Exp $

COMMENT=	"subversion repository web frontend"

DISTNAME=	SVN-Web-0.38
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/C/CL/CLKAO/}

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/subversion,-perl \
		::devel/p5-Locale-Maketext-Simple \
		::devel/p5-YAML \
		::textproc/p5-Template \
		::textproc/p5-Text-Diff \
		::textproc/p5-XML-RSS
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
