# $OpenBSD: Makefile,v 1.7 2002/05/13 23:31:25 espie Exp $

DISTNAME=	grepmail-4.70
CATEGORIES=	mail perl5
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"search mailboxes for a particular email"
HOMEPAGE=	http://grepmail.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grepmail/}

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	::devel/p5-Time-TimeDate \
		::converters/p5-DateManip
RUN_DEPENDS=	${BUILD_DEPENDS} \
		:bzip2-*:archivers/bzip2
		
CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	FASTREADER=0

.include <bsd.port.mk>
