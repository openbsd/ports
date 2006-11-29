# $OpenBSD: Makefile,v 1.6 2006/11/29 07:57:04 msf Exp $

COMMENT=	"subversion activity notification"

MODULES=	cpan

DISTNAME=	SVN-Notify-2.64
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/subversion,-perl \
		::www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= perl modbuild

.include <bsd.port.mk>
