# $OpenBSD: Makefile,v 1.1.1.1 2003/12/10 21:26:23 naddy Exp $

COMMENT=	"high-quality MPEG audio decoder"

DISTNAME=	libmad-0.15.0b
CATEGORIES=	audio
HOMEPAGE=	http://mad.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
