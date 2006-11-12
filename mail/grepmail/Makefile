# $OpenBSD: Makefile,v 1.14 2006/11/12 23:28:42 jcs Exp $

DISTNAME=	grepmail-4.80
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail perl5

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"search mailboxes for a particular email"
HOMEPAGE=	http://grepmail.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grepmail/}

RUN_DEPENDS=	:p5-Time-TimeDate-*:devel/p5-Time-TimeDate \
		:p5-DateManip-*:converters/p5-DateManip \
		:bzip2-*:archivers/bzip2
BUILD_DEPENDS=	:p5-Time-TimeDate-*:devel/p5-Time-TimeDate \
		:p5-DateManip-*:converters/p5-DateManip
		
CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	FASTREADER=0

.include <bsd.port.mk>
