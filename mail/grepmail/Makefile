# $OpenBSD: Makefile,v 1.13 2004/10/03 18:41:36 jcs Exp $

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

MAINTAINER=	Joshua Stein <jcs@openbsd.org>

RUN_DEPENDS=	:p5-Time-TimeDate-*:devel/p5-Time-TimeDate \
		:p5-DateManip-*:converters/p5-DateManip \
		:bzip2-*:archivers/bzip2
BUILD_DEPENDS=	:p5-Time-TimeDate-*:devel/p5-Time-TimeDate \
		:p5-DateManip-*:converters/p5-DateManip
		
CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	FASTREADER=0

.include <bsd.port.mk>
