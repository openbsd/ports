# $OpenBSD: Makefile,v 1.3 2004/02/20 17:39:06 millert Exp $

COMMENT=		"HP Inkjet driver for ghostscript"

DISTNAME=		hpijs-1.5
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
FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} \
			docdir="${PREFIX}/share/doc/hpijs"

.include <bsd.port.mk>
