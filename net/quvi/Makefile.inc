# $OpenBSD: Makefile.inc,v 1.5 2013/09/27 05:50:01 ajacoutot Exp $

CATEGORIES?=	net multimedia

HOMEPAGE=	http://quvi.sourceforge.net/
EXTRACT_SUFX=	.tar.xz

# AGPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quvi/}

CONFIGURE_STYLE?=gnu
