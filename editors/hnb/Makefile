# $OpenBSD: Makefile,v 1.6 2002/12/29 19:43:49 fgsch Exp $

COMMENT=	"hierarchical notebook"

DISTNAME=	hnb-1.8.1
CATEGORIES=	editors

HOMEPAGE=	http://hnb.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hnb/}

LIB_DEPENDS=	xml2.6::textproc/libxml

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk> 
