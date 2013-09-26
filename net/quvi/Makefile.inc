# $OpenBSD: Makefile.inc,v 1.4 2013/09/26 15:53:07 ajacoutot Exp $

CATEGORIES?=	net multimedia

HOMEPAGE=	http://quvi.sourceforge.net/
EXTRACT_SUFX=	.tar.xz

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quvi/}

CONFIGURE_STYLE?=gnu
