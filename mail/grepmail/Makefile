# $OpenBSD: Makefile,v 1.10 2002/11/01 02:57:55 jcs Exp $

DISTNAME=	grepmail-4.80
CATEGORIES=	mail perl5

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"search mailboxes for a particular email"
HOMEPAGE=	http://grepmail.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grepmail/}

MAINTAINER=	Joshua Stein <jcs@rt.fm>

BUILD_DEPENDS=	:p5-Time-TimeDate-*:devel/p5-Time-TimeDate \
		:p5-DateManip-*:converters/p5-DateManip
RUN_DEPENDS=	${BUILD_DEPENDS} \
		:bzip2-*:archivers/bzip2
		
CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	FASTREADER=0

.include <bsd.port.mk>
