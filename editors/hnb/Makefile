# $OpenBSD: Makefile,v 1.1.1.1 2001/07/12 08:41:31 kevlo Exp $

COMMENT=	"hierarchical notebook"

DISTNAME=	hnb-1.7
CATEGORIES=	editors
NEED_VERSION=	1.419

HOMEPAGE=	http://http://hnb.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= hnb

LIB_DEPENDS=	xml2.5::textproc/libxml

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk> 
