# $OpenBSD: Makefile.inc,v 1.6 2019/07/12 20:48:47 sthen Exp $

CATEGORIES?=	net multimedia

HOMEPAGE=	http://quvi.sourceforge.net/
EXTRACT_SUFX=	.tar.xz

# AGPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quvi/}

CONFIGURE_STYLE?=gnu
