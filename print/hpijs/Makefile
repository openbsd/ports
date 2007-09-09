# $OpenBSD: Makefile,v 1.6 2007/09/09 14:47:33 ajacoutot Exp $

COMMENT=		HP Inkjet driver for ghostscript

DISTNAME=		hpijs-1.5
PKGNAME=		${DISTNAME}p1
CATEGORIES=		print

HOMEPAGE=		http://hplip.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hpinkjet/}

RUN_DEPENDS=		::print/ghostscript/gnu \
			::print/foomatic-filters

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-cups-install
FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} \
			docdir="${PREFIX}/share/doc/hpijs"

.include <bsd.port.mk>
