# $OpenBSD: Makefile,v 1.1.1.1 2001/05/28 20:15:07 naddy Exp $
# vim:ts=8

DISTNAME=	grepmail-4.47
CATEGORIES=	mail
NEED_VERSION=	1.405

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"search mailboxes for a particular email"
HOMEPAGE=	http://grepmail.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= grepmail

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/Date/Parse.pm::devel/p5-Time-TimeDate \
		${PERL_MODULES}/Date/Manip.pm::converters/p5-DateManip \
		bzip2::archivers/bzip2
RUN_DEPENDS=	bzip2::archivers/bzip2
CONFIGURE_STYLE= perl

.include <bsd.port.mk>
