# $OpenBSD: Makefile,v 1.8 2008/02/14 21:36:27 rui Exp $

COMMENT=	packet manipulation backend of Netdude framework

DISTNAME=	libnetdude-0.10a
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	netdude	1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Rui Reis <rui@openbsd.org>

LIB_DEPENDS=	pcapnav::net/libpcapnav \
		glib::devel/glib

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pcap

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/libnetdude \
			--disable-gtk-doc --datadir=${PREFIX}/lib
.include <bsd.port.mk>

