# $OpenBSD: Makefile,v 1.4 2001/09/27 05:19:22 kevlo Exp $

COMMENT=	"hierarchical notebook"

DISTNAME=	hnb-1.8.1
CATEGORIES=	editors
NEED_VERSION=	1.419

HOMEPAGE=	http://hnb.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= hnb

LIB_DEPENDS=	xml2.6::textproc/libxml

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk> 
