# $OpenBSD: Makefile,v 1.1.1.1 2003/05/29 11:12:16 sturm Exp $

COMMENT=		"HP Inkjet driver for ghostscript"

DISTNAME=		hpijs-1.3.1
CATEGORIES=		print

HOMEPAGE=		http://hpinkjet.sourceforge.net/

MAINTAINER=		Benjamin Lerman <benjamin.lerman@ambre.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hpinkjet/}

RUN_DEPENDS=		::print/ghostscript/gnu

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
