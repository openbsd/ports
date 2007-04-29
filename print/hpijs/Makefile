# $OpenBSD: Makefile,v 1.5 2007/04/29 00:15:02 jasper Exp $

COMMENT=		"HP Inkjet driver for ghostscript"

DISTNAME=		hpijs-1.5
PKGNAME=		${DISTNAME}p0
CATEGORIES=		print

HOMEPAGE=		http://hplip.sourceforge.net/

MAINTAINER=		Benjamin Lerman <benjamin.lerman@ambre.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hpinkjet/}

RUN_DEPENDS=		::print/ghostscript/gnu

CONFIGURE_STYLE=	gnu
FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} \
			docdir="${PREFIX}/share/doc/hpijs"

.include <bsd.port.mk>
